#!/usr/bin/bash

readonly ANSLIST=("グー" "チョキ" "パー")

echo "最初はグー、じゃんけん・・・"
echo -n "あなた："
read You
ShellScript=${ANSLIST[$(($RANDOM % ${#ANSLIST[*]}))]}
echo -n "あいて："
echo $ShellScript

if test $You = $ShellScript; then
  echo "あいこです"
elif test $You = "グー" && test $ShellScript = "チョキ"; then
  echo "あなたの勝ちです"
elif test $You = "グー" && test $ShellScript = "パー"; then
  echo "あなたの負けです"
elif test $You = "チョキ" && test $ShellScript = "グー"; then
  echo "あなたの負けです"
elif test $You = "チョキ" && test $ShellScript = "パー"; then
  echo "あなたの勝ちです"
elif test $You = "パー" && test $ShellScript = "グー"; then
  echo "あなたの勝ちです"
elif test $You = "パー" && $ShellScript = "チョキ"; then
  echo "あなたの負けです"
else
  echo "正しいポーズを選んでください"
fi
