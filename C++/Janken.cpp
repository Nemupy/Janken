#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>

int main(){
  printf("最初はグー、じゃんけん・・・\nあなた：");
  int CPlusPlus;
  std::string You;
  std::cin >> You;
  srand(time(NULL));
  CPlusPlus = rand()%3+1;

  if(You=="グー" && CPlusPlus==1)
    printf("あいて：グー\nあいこです");
  else if(You=="グー" && CPlusPlus==2)
    printf("あいて：チョキ\nあなたの勝ちです");
  else if(You=="グー" && CPlusPlus==3)
    printf("あいて：パー\nあなたの負けです");
  else if(You=="チョキ" && CPlusPlus==1)
    printf("あいて：グー\nあなたの負けです");
  else if(You=="チョキ" && CPlusPlus==2)
    printf("あいて：チョキ\nあいこです");
  else if(You=="チョキ" && CPlusPlus==3)
    printf("あいて：パー\nあなたの勝ちです");
  else if(You=="パー" && CPlusPlus==1)
    printf("あいて：グー\nあなたの勝ちです");
  else if(You=="パー" && CPlusPlus==2)
    printf("あいて：チョキ\nあなたの負けです");
  else if(You=="パー" && CPlusPlus==3)
    printf("あいて：パー\nあいこです");
  else
    printf("正しいポーズを選んでください");

  return 0;
}
