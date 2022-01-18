<?php

$ansList = array("グー", "チョキ", "パー");

echo "最初はグー、じゃんけん・・・\n";
echo "あなた：";
$You = trim(fgets(STDIN));
$PHP = $ansList[array_rand($ansList)];
echo "あいて：${PHP}\n";

if ($You == $PHP) echo ("あいこです");
else if ($You == "グー" && $PHP == "チョキ") echo ("あなたの勝ちです");
else if ($You == "グー" && $PHP == "パー") echo ("あなたの負けです");
else if ($You == "チョキ" && $PHP == "グー") echo ("あなたの負けです");
else if ($You == "チョキ" && $PHP == "パー") echo ("あなたの勝ちです");
else if ($You == "パー" && $PHP == "グー") echo ("あなたの勝ちです");
else if ($You == "パー" && $PHP == "チョキ") echo ("あなたの負けです");
else echo ("正しいポーズを選んでください");

echo "\n";

fgets(STDIN);
?>
