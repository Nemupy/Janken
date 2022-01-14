CHOICES = %w[グー チョキ パー]

puts "最初はグー、じゃんけん・・・"
print "あなた："
You = gets.chomp
Ruby = CHOICES.sample
puts "あいて：#{Ruby}"
unless player_choice = CHOICES.index(You)
  puts "正しいポーズを選んでください"
  exit
end

puts case (player_choice - CHOICES.index(Ruby)) % 3
     when 0
       "あいこです"
     when 1
       "あなたの負けです"
     when 2
       "あなたの勝ちです"
     end
