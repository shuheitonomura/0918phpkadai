<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>iPhone一覧</title>
</head>

<body>
  <form action="todo_create.php" method="post">
    <fieldset>
      <legend>iPhone一覧</legend>
      <a href="todo_read.php">一覧画面</a>
      <div>
        商品名: <input type="text" name="names">
      </div>
      <div>
        ディスプレイ: <input type="text" name="displays">
      </div>
      <div>
        価格: <input type="text" name="prices">
      </div>
      <div>
        重量: <input type="text" name="weights">
      </div>
        発売日: <input type="date" name="releases">
      </div>
      <div>
        <button>submit</button>
      </div>
    </fieldset>
  </form>

</body>

</html>