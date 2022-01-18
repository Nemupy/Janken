import strformat
import random

type StringArray = array[0..2, string]

var ansList: StringArray;
ansList = ["グー", "チョキ", "パー"]

randomize()

echo "最初はグー、じゃんけん・・・"
stdout.write "あなた："
let You = readLine(stdin)
let Nim = ansList[rand(0..2)]
echo fmt"あいて：{Nim}"

if You == Nim:
  echo "あいこです"
elif You == "グー" and Nim == "チョキ":
  echo "あなたの勝ちです"
elif You == "グー" and Nim == "パー":
    echo "あなたの負けです"
elif You == "チョキ" and Nim == "グー":
  echo "あなたの負けです"
elif You == "チョキ" and Nim == "パー":
  echo "あなたの勝ちです"
elif You == "パー" and Nim == "グー":
  echo "あなたの勝ちです"
elif You == "パー" and Nim == "チョキ":
  echo "あなたの負けです"
else:
  echo "正しいポーズを選んでください"
