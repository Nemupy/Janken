local ansList = {"グー", "チョキ", "パー"}

print("最初はグー、じゃんけん・・・")
io.write("あなた：")
You = io.read()

math.randomseed(os.time())
local num = math.random(#ansList)
Lua = ansList[num]
print(("あいて：%s"):format(Lua))
if You == Lua then
  print("あいこです")
elseif You == "グー" and Lua == "チョキ" then
  print("あなたの勝ちです")
elseif You == "グー" and Lua == "パー" then
  print("あなたの負けです")
elseif You == "チョキ" and Lua == "グー" then
  print("あなたの負けです")
elseif You == "チョキ" and Lua == "パー" then
  print("あなたの勝ちです")
elseif You == "パー" and Lua == "グー" then
  print("あなたの勝ちです")
elseif You == "パー" and Lua == "チョキ" then
  print("あなたの負けです")
else
  print("正しいポーズを選んでください")
end
