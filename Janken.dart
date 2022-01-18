import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() async {
  final ansList = ["グー", "チョキ", "パー"];

	print('最初はグー、じゃんけん・・・');
  stdout.write("あなた：");
  final You = stdin.readLineSync(encoding: utf8);
  final m = new Random();
  final numb = m.nextInt(ansList.length);
  final Dart = ansList[numb];
  print("あいて：" + Dart);
  
  if (You == Dart) {
    print("あいこです");
  } else if (You == "グー" && Dart == "チョキ") {
    print("あなたの勝ちです");
  } else if (You == "グー" && Dart == "パー") {
    print("あなたの負けです");
  } else if (You == "チョキ" && Dart == "グー") {
    print("あなたの負けです");
  } else if (You == "チョキ" && Dart == "パー") {
    print("あなたの勝ちです");
  } else if (You == "パー" && Dart == "グー") {
    print("あなたの勝ちです");
  } else if (You == "パー" && Dart == "チョキ") {
    print("あなたの負けです");
  } else {
    print("正しいポーズを選んでください");
  }
}
