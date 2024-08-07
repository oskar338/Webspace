<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/style/styleimageverwaltung.css">
    <title>suffkopp.com</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js"></script>
</head>
<body>
<table>

    <tr>
    <th>ID</th>
    <th>Username</th>
    <th>Löschen</th>
    </tr>

    <?php
    session_start();
    if(!isset($_SESSION["username"])){
    header("Location: AdminLogin.php");
    exit;
    }

    require("rankmanger.php");
    if(getRank($_SESSION["username"]) != ADMIN){
    header("Location: AdminLogin.php");
    exit;
    }

    require("mysql.php");
    if(isset($_GET["del"])){
        if(!empty($_GET["del"])){
            $stmt = $mysql->prepare("DELETE FROM accounts WHERE ID = :id");
            $stmt->execute(array(":id" => $_GET["del"]));
            ?>
            <p>Der Benutzer wurde gelöscht</p>
            <?php
        }
    }

    $stmt = $mysql->prepare("SELECT * FROM accounts");
    $stmt->execute();
    while($row = $stmt->fetch()){
        ?>
        <tr>
        <td><?php echo $row["ID"] ?></td>
        <td><?php echo $row["USERNAME"] ?></td>
        <td><a href="Benutzerverwaltung.php?del=<?php echo $row["ID"] ?>"><i class="fas fa-user-minus"></i></a></td>

        </tr>
        <?php
    }
    ?>
    </table>

   <br>
    <a href="register.php">Neuen Account erstellen</a><br>
    <br>
    <a href="deleteimage.php">Foto löschen</a><br>
    <a href="deletevideo.php">Video löschen</a><br>
    <br>
    <a href="../index.php">Zurück zur Starseite</a><br>

</body>
</html>