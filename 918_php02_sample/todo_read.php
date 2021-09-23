<?php

// DB接続
// todo_read.php

$dbn ='mysql:dbname=kadai0918_gsacs09;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// 「dbError:...」が表示されたらdb接続でエラーが発生していることがわかる．

// SQL作成&実行
$sql = 'SELECT * FROM kadai_table';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

// todo_read.php
//ここのfetchAllがSQLでヒットしたデータがPHPに送られてくる
//必ずvardumpで$resultをチェックする
if ($status == false) {
  $error = $stmt->errorInfo();
  exit('sqlError:'.$error[2]);
} else {
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  $output = "";
  foreach ($result as $record) {
    $output .= "
      <tr>
        <td>{$record["releases"]}</td>
        <td>{$record["names"]}</td>
        <td>{$record["displays"]}</td>
        <td>{$record["prices"]}</td>
        <td>{$record["weights"]}</td>
      </tr>
    ";
  }
}



?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>iPhone一覧</title>
</head>

<body>
  <fieldset>
    <legend>iPhone一覧</legend>
    <a href="todo_input.php">入力画面</a>
    <table>
      <thead>
        <tr>
          <th>発売日</th>
          <th>商品名</th>
          <th>ディスプレイ</th>
          <th>価格</th>
          <th>重量</th>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>