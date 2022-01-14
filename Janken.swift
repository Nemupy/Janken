let ansList = ["グー", "チョキ", "パー"]
struct AError: Error {}

print("最初はグー、じゃんけん・・・")
print("あなた：", terminator: "")
let unsafeYou: String? = readLine()
if let You = unsafeYou {
  //print(You)
  let unsafeSwift: String? = ansList.randomElement()
  guard let Swift = unsafeSwift else {
    throw AError()
  }
  print("あいて：" + Swift)
  if (You == Swift) {
    print("あいこです")
  } else if (You == "グー" && Swift == "チョキ") {
    print("あなたの勝ちです")
  } else if (You == "グー" && Swift == "パー") {
    print("あなたの負けです")
  } else if (You == "チョキ" && Swift == "グー") {
    print("あなたの負けです")
  } else if (You == "チョキ" && Swift == "パー") {
    print("あなたの勝ちです")
  } else if (You == "パー" && Swift == "グー") {
    print("あなたの勝ちです")
  } else if (You == "パー" && Swift == "チョキ") {
    print("あなたの負けです")
  } else {
    print("正しいポーズを選んでください")
  }

} else {
  print("Error!");
}
