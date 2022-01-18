janken <- function() {
  cat("最初はグー、じゃんけん・・・")
  List <- c("グー", "チョキ","パー")
  R <- sample(List, 1)
  Your <- select.list(List, title="あなた：") 
  if (R==Your)
    cat("あいこです","\n", sep="")
  else if ((Your=="グー" && R=="チョキ!")||
           (Your=="チョキ" && R=="パー")||
           (Your=="パー" && R=="グー"))
    cat("あなたの勝ちです", "\n", sep="") 
  else
    cat("あなたの負けです", "\n", sep="")
}

janken()
