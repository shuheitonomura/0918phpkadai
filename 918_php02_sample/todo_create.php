<?php
// var_dump($_POST);
//exit();
// POSTデータ確認
//データ送信されなかったりからで送信されたらエラーですよって表示
//データ来てないってのは!issset関数
//空っぽの時は==''ここでは４パターン入れています
//todo送信されてないtodo空っぽ、deadlineも同じ
if (
    !isset($_POST['names']) || $_POST['names']=='' ||
    !isset($_POST['displays']) || $_POST['displays']=='' ||
    !isset($_POST['prices']) || $_POST['prices']=='' ||
    !isset($_POST['weights']) || $_POST['weights']=='' ||
    !isset($_POST['releases']) || $_POST['releases']==''
) {
    exit('ParamError');
}
//４つの条件クリア後
// todo_create.php
//データ受け取って変数に入れる
$names = $_POST['names'];
$displays = $_POST['displays'];
$prices = $_POST['prices'];
$weights = $_POST['weights'];
$releases = $_POST['releases'];


// DB接続
$dbn ='mysql:dbname=kadai0918_gsacs09;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';
//userとpwdはxanpで最初に設定したからこのままでいい
// DB接続
try {
$pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
echo json_encode(["db error" => "{$e->getMessage()}"]);
exit();
}

// 「dbError:...」が表示されたらdb接続でエラーが発生していることがわかる．

// SQL作成&実行
$sql = 'INSERT INTO kadai_table (id, names, displays, prices, weights, releases, created_at, updated_at) VALUES (NULL, :names, :displays, :prices, :weights, :releases, now(), now())';
//ユーザーが送ってきたものを使いたい時は:をつける。バインド変数という。:の後は下で定義する。

$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':names', $names, PDO::PARAM_STR);
$stmt->bindValue(':displays', $displays, PDO::PARAM_STR);
$stmt->bindValue(':prices', $prices, PDO::PARAM_STR);
$stmt->bindValue(':weights', $weights, PDO::PARAM_STR);
$stmt->bindValue(':releases', $releases, PDO::PARAM_STR);

// SQL実行（実行に失敗すると$statusにfalseが返ってくる）
$status = $stmt->execute();
//失敗するか成功するかしかないから$statusにtrueかfalseが出る
//この下に書いてるやつです
// todo_create.php

if ($status == false) {
    $error = $stmt->errorInfo();
    exit('sqlError:'.$error[2]);
} else {
    header('Location:todo_input.php');
}
//OKだった場合はheader関数を使ってここに移動してくださいというものを書く