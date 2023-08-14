<!DOCTYPE html>
<html lang="de" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Account erstellen</title>
    <link rel="stylesheet" href="/style/stylelregister.css">
  </head>
  <body>
    <?php

    if(isset($_POST["submit"])){
      require("mysql.php");
      $stmt = $mysql->prepare("SELECT * FROM accounts WHERE USERNAME = :user"); //Username überprüfen
      $stmt->bindParam(":user", $_POST["username"]);
      $stmt->execute();
      $count = $stmt->rowCount();
      if($count == 0){
        //Username ist frei
        $stmt = $mysql->prepare("SELECT * FROM accounts WHERE EMAIL = :email"); //Username überprüfen
        $stmt->bindParam(":email", $_POST["email"]);
        $stmt->execute();
        $count = $stmt->rowCount();
        if($count == 0){
          if($_POST["pw"] == $_POST["pw2"]){
            //User anlegen
            $stmt = $mysql->prepare("INSERT INTO accounts (USERNAME, PASSWORD, EMAIL, TOKEN) VALUES (:user, :pw, :email, null)");
            $stmt->bindParam(":user", $_POST["username"]);
            $hash = password_hash($_POST["pw"], PASSWORD_BCRYPT);
            $stmt->bindParam(":pw", $hash);
            $stmt->bindParam(":email", $_POST["email"]);
            $stmt->execute();
            echo "Dein Account wurde angelegt";
          } else {
            echo "Die Passwörter stimmen nicht überein";
          }
        } else {
          echo "Email bereits vergeben";
        }
      } else {
        echo "Der Username ist bereits vergeben";
      }
    }
    
     ?>
    <div class="center">
    <h1>Account erstellen</h1>
    <form action="register.php" method="post">

    <div class="txt_field">
      <input type="text" name="username" placeholder="Username" required><br>
      </div>

    <div class="txt_field">
      <input type="password" name="pw" placeholder="Passwort" required><br>
      </div>

    <div class="txt_field">
      <input type="password" name="pw2" placeholder="Passwort wiederholen" required><br>
      </div>

    <div class="signup_link">
      <button type="submit" name="submit">Erstellen</button>
    </div>

    </form>
    
    </div>
    
    <br>

    <a href="Anmelden.php">Zur Anmeldung</a>
    <a href="index.php">Zurück</a>
    

  </body>
  
</html>