open System

[<EntryPoint>]
let main argv =
  let ansList = [| "グー"; "チョキ"; "パー" |]
  let rnd = new Random()
  printfn "最初はグー、じゃんけん・・・"
  printf "あなた："
  let You = stdin.ReadLine()
  let num = rnd.Next(0, 2)
  let FSharp = ansList.[num]
  stdout.WriteLine("あいて：{0}", FSharp)
  if You = FSharp then
    printfn "あいこです"
  elif You = "グー" && FSharp = "チョキ" then
    printfn "あなたの勝ちです"
  elif You = "グー" && FSharp = "パー" then
    printfn "あなたの負けです"
  elif You = "チョキ" && FSharp = "グー" then
    printfn "あなたの負けです"
  elif You = "チョキ" && FSharp = "パー" then
    printfn "あなたの勝ちです"
  elif You = "パー" && FSharp = "グー" then
    printfn "あなたの勝ちです"
  elif You = "パー" && FSharp = "チョキ" then
    printfn "あなたの負けです"
  else
    printfn "正しいポーズを選んでください"
  0
