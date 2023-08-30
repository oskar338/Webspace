<!DOCTYPE html>
<html lang="de" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login Benutzerverwaltung</title>
    <link rel="stylesheet" href="/style/stylelogin.css">
  </head>
  <body>
    <?php
    if(isset($_POST["submit"])){
      require("mysql.php");
      $stmt = $mysql->prepare("SELECT * FROM accounts WHERE USERNAME = :user"); //Username überprüfen
      $stmt->bindParam(":user", $_POST["username"]);
      $stmt->execute();
      $count = $stmt->rowCount();

      if($count == 1){
        //Username ist frei
        $row = $stmt->fetch();

        if(password_verify($_POST["pw"], $row["PASSWORD"])){
          if($row["SERVERRANK"] == 2){
          session_start();
          $_SESSION["username"] = $row["USERNAME"];
          header("Location: /Benutzerverwaltung/user.php");

        } else {
          echo "Du hast dazu keine Berechtigung.";
        }

        } else {
          echo "Der Login ist fehlgeschlagen";
        }

      } else {
          echo "Der Login ist fehlgeschlagen";
      }
    }
     ?>
    <div class="center">

    <h1>Anmelden</h1>
    <form action="verwaltung.php" method="post">

    <div class="txt_field">
      <input type="text" name="username" placeholder="Username" required><br>
    </div>

    <div class="txt_field">
      <input type="password" name="pw" placeholder="Passwort" required><br>
    </div>

    <div class="signup_link">
      <button type="submit" name="submit">Einloggen</button>
      </div>

    </form>
    </div>

    <br>

  </body>

</html>