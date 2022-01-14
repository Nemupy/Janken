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
  const TypeScript: string = ansList[Math.floor(Math.random() * ansList.length)];
  console.log("あいて：" + TypeScript);

  if (You === TypeScript) console.log("あいこです");
  else if (You === "グー" && TypeScript === "チョキ") console.log("あなたの勝ちです");
  else if (You === "グー" && TypeScript === "パー") console.log("あなたの負けです");
  else if (You === "チョキ" && TypeScript === "グー") console.log("あなたの負けです");
  else if (You === "チョキ" && TypeScript === "パー") console.log("あなたの勝ちです");
  else if (You === "パー" && TypeScript === "グー") console.log("あなたの勝ちです");
  else if (You === "パー" && TypeScript === "チョキ") console.log("あなたの負けです");
  else console.log("正しいポーズを選んでください");

})();
