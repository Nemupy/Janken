import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

class Main {
  public static void main(String[] args) {
    String[] ansList = new String[3];

    ansList[0] = "グー";
    ansList[1] = "チョキ";
    ansList[2] = "パー";

    System.out.println("最初はグー、じゃんけん・・・");
    InputStreamReader isr = new InputStreamReader(System.in);
    BufferedReader br = new BufferedReader(isr);
    System.out.print("あなた：");
    String You = null;
    try {
      You = br.readLine();
      br.close();
    } catch (IOException e) {
      e.printStackTrace();
    };
    int num = (int) (Math.random() * (ansList.length));
    String Java = ansList[num];
    System.out.println("あいて：" + Java);
    if (You.equals(Java)) System.out.println("あいこです");
    else if (You.equals("グー") && Java.equals("チョキ")) System.out.println("あなたの勝ちです");
    else if (You.equals("グー") && Java.equals("パー")) System.out.println("あなたの負けです");
    else if (You.equals("チョキ") && Java.equals("グー")) System.out.println("あなたの負けです");
    else if (You.equals("チョキ") && Java.equals("パー")) System.out.println("あなたの勝ちです");
    else if (You.equals("パー") && Java.equals("グー")) System.out.println("あなたの勝ちです");
    else if (You.equals("パー") && Java.equals("チョキ")) System.out.println("あなたの負けです");
    else System.out.println("正しいポーズを選んでください");

  }
}
