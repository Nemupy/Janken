import random

print("最初はグー、じゃんけん・・・")
You = input("あなた：")
Python = random.choice(["グー", "チョキ", "パー"])
print("あいて：" + Python)

if You == Python:
    print("あいこです")
elif You == "グー" and Python == "チョキ":
    print("あなたの勝ちです")
elif You == "グー" and Python == "パー":
        print("あなたの負けです")
elif You == "チョキ" and Python == "グー":
    print("あなたの負けです")
elif You == "チョキ" and Python == "パー":
    print("あなたの勝ちです")
elif You == "パー" and Python == "グー":
    print("あなたの勝ちです")
elif You == "パー" and Python == "チョキ":
    print("あなたの負けです")
else:
    print("正しいポーズを選んでください")
