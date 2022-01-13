ansList = ["グー", "チョキ", "パー"]

console.log("最初はグー、じゃんけん・・・")
You = prompt("回答を入力してください")
console.log("あなた: #{You}")
JavaScript = ansList[Math.floor(Math.random() * ansList.length)]
console.log("あいて：" + JavaScript)

if You is JavaScript
    console.log("あいこです")
else if You is "グー" and JavaScript is "チョキ"
    console.log("あなたの勝ちです")
else if You is "グー" and JavaScript is "パー"
    console.log("あなたの負けです")
else if You is "チョキ" and JavaScript is "グー"
    console.log("あなたの負けです")
else if You is "チョキ" and JavaScript is "パー"
    console.log("あなたの勝ちです")
else if You is "パー" and JavaScript is "グー"
    console.log("あなたの勝ちです")
else if You is "パー" and JavaScript is "チョキ"
    console.log("あなたの負けです");
else console.log("正しいポーズを選んでください");
