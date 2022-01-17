using System;
using System.Collections;
using System.Collections.Generic;

class MainClass {
  static void Main() {
    string[] ansList = new string[3];
    ansList[0] = "グー";
    ansList[1] = "チョキ";
    ansList[2] = "パー";

    Console.WriteLine("最初はグー、じゃんけん・・・");
    Console.Write("あなた：");
    string You = Console.ReadLine();
    Random random = new System.Random();
    string CSharp = ansList[random.Next(ansList.Length)];
    Console.WriteLine("あいて：" + CSharp);
    if (You == CSharp) Console.WriteLine("あいこです");
    else if ((You == "グー") && (CSharp == "チョキ")) Console.WriteLine("あなたの勝ちです");
    else if ((You == "グー") && (CSharp == "パー")) Console.WriteLine("あなたの負けです");
    else if ((You == "チョキ") && (CSharp == "グー")) Console.WriteLine("あなたの負けです");
    else if ((You == "チョキ") && (CSharp == "パー")) Console.WriteLine("あなたの勝ちです");
    else if ((You == "パー") && (CSharp == "グー")) Console.WriteLine("あなたの勝ちです");
    else if ((You == "パー") && (CSharp == "チョキ")) Console.WriteLine("あなたの負けです");
    else Console.WriteLine("正しいポーズを選んでください");
  }
}
