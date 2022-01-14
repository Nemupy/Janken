#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
const char *choices[] = {"グー","チョキ","パー"};
int h = 0;
int main(void) {
    char choice[80];
    printf("最初はグー、じゃんけん・・・\nあなた:");
    scanf("%s",choice);
    for(int i = 0;i<3; i++){
	if(strcmp(choices[i],choice)==0){
	   h=1;
	}
    }
    if(h == 0)
    {
	printf("正しいポーズを選んでください");
	return 0;
    }
    srand((unsigned int)time(NULL));
    int b = 0 + rand() % 3;
    if(strcmp(choice,choices[b]) == 0)return printf("あいこです");
    if(strcmp(choice,"グー") == 0 && strcmp(choices[b],"パー") == 0)return printf("あなたの負けです");
    if(strcmp(choice,"グー") == 0 && strcmp(choices[b],"チョキ") == 0)return printf("あなたの勝ちです");    if(strcmp(choice,"パー") == 0 && strcmp(choices[b],"チョキ") == 0)return printf("あなたの負けです");
    if(strcmp(choice,"チョキ") == 0 && strcmp(choices[b],"パー") == 0)return printf("あなたの勝ちです");
    if(strcmp(choice,"チョキ") == 0 && strcmp(choices[b],"グー") == 0)return printf("あなたの負けです");
    if(strcmp(choice,"パー") == 0 && strcmp(choices[b],"グー") == 0)return printf("あなたの勝ちです");
    return 0;
}
