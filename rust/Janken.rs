//! Janken.rs - Dependencies: rand

use std::collections::HashMap;
use std::io::{stdout, Write};

use rand::prelude::SliceRandom;


fn main() {
    let poses: HashMap<&str, &str> = [
        ("グー", "チョキ"), ("チョキ", "パー"), ("パー", "グー")
    ].iter().cloned().collect();
    print!("最初はグー、じゃんけん・・・\nあなた：");
    stdout().flush().unwrap();
    let mut user = String::new();
    std::io::stdin().read_line(&mut user).unwrap();
    user = user[..user.len()-1].to_string();
    let opponent = *vec!["グー", "チョキ", "パー"].choose(&mut rand::thread_rng()).unwrap();
    println!(
        "あいて：{}\n{}", &opponent,
        if &user == opponent { "あいこです" }
        else if poses.get::<str>(&user).unwrap_or(&"...") == &opponent { "あなたの勝ちです" }
        else {
            if poses.contains_key::<str>(&user) { "あなたの負けです" }
            else { "正しいポーズを選んでください" }
        }
    );
}