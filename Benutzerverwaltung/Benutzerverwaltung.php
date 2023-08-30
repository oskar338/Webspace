<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/style/stylelogin.css">
    <title>Benutzerverwaltung</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js"></script>
</head>
<body>
<table>
    <tr>
    <th>ID</th>
    <th>Username</th>
    <th>Aktionen</th>
    </tr>

    <?php

    session_start();
    if(!isset($_SESSION["username"])){
    header("Location: index.php");
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
        <td><a href="user.php?del=<?php echo $row["ID"] ?>"><i class="fas fa-user-minus"></i></a></td>

        </tr>
        <?php
    }
    ?>

    
    </table>
   
    <a href="../index.php">Zurück zur Starseite</a><br>
    <a href="accountrestrictiongzuz187.php">Neuen Account erstellen</a><br>


</body>
</html>