ansList = { "グー", "チョキ", "パー" }

IO.puts "最初はグー、じゃんけん・・・"
you = IO.gets "あなた："
num = 0..2 |> Enum.random
elixir = elem(ansList, num)
IO.puts "あいて：#{elixir}";

cond do 
  you == elixir -> IO.puts "あいこです"
  you == "グー\n" && elixir == "チョキ" -> IO.puts "あなたの勝ちです"
  you == "グー\n" && elixir == "パー" -> IO.puts "あなたの負けです"
  you == "チョキ\n" && elixir == "グー" -> IO.puts "あなたの負けです"
  you == "チョキ\n" && elixir == "パー" -> IO.puts "あなたの勝ちです"
  you == "パー\n" && elixir == "グー" -> IO.puts "あなたの勝ちです"
  you == "パー\n" && elixir == "チョキ" -> IO.puts "あなたの負けです"
  true -> IO.puts "正しいポーズを選んでください"
end
