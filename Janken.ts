import { createInterface } from "readline";
const rl = createInterface({
  input: process.stdin,
  output: process.stdout
});

const question = async (query: string): Promise<void> => new Promise((resolve) => {
  rl.question(query, (answer: string) => resolve(answer));
});

const ansList = ["グー", "チョキ", "パー"] as const;

(async () => {
  console.log("最初はグー、じゃんけん・・・")
  const You: string = await question("あなた：");
  const JavaScript: string = ansList[Math.floor(Math.random() * ansList.length)];
  console.log("あいて：" + JavaScript);

  if (You === JavaScript) console.log("あいこです");
  else if (You === "グー" && JavaScript === "チョキ") console.log("あなたの勝ちです");
  else if (You === "グー" && JavaScript === "パー") console.log("あなたの負けです");
  else if (You === "チョキ" && JavaScript === "グー") console.log("あなたの負けです");
  else if (You === "チョキ" && JavaScript === "パー") console.log("あなたの勝ちです");
  else if (You === "パー" && JavaScript === "グー") console.log("あなたの勝ちです");
  else if (You === "パー" && JavaScript === "チョキ") console.log("あなたの負けです");
  else console.log("正しいポーズを選んでください");

})();
