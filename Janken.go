package main

import (
  "bufio"
	"fmt"
  "os"
  "math/rand"
  "time"
)

func main() {
  var ansList[3] string = [3]string {"グー", "チョキ", "パー"}

	fmt.Println("最初はグー、じゃんけん・・・")
  fmt.Print("あなた：")

  scanner := bufio.NewScanner(os.Stdin)
  scanner.Scan()
  You := scanner.Text()

  rand.Seed(time.Now().UnixNano())
  num := rand.Intn(len(ansList))
  Go := ansList[num]

  fmt.Println("あいて：" + Go)
  if You == Go {
    fmt.Println("あいこです")
  } else if You == "グー" && Go == "チョキ" {
    fmt.Println("あなたの勝ちです")
  } else if You == "グー" && Go == "パー" {
    fmt.Println("あなたの負けです")
  } else if You == "チョキ" && Go == "グー" {
    fmt.Println("あなたの負けです")
  } else if You == "チョキ" && Go == "パー" {
    fmt.Println("あなたの勝ちです")
  } else if You == "パー" && Go == "グー" {
    fmt.Println("あなたの勝ちです")
  } else if You == "パー" && Go == "チョキ" {
    fmt.Println("あなたの負けです")
  } else {
    fmt.Println("正しいポーズを選んでください")
  }

}
