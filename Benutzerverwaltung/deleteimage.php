<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Benutzerverwaltung</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js"></script>

</head>
<body>
<table>

<tr>
    <th>ID</th>
    <th>Foto-Adresse</th>
    <th>Aktionen</th>
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
?>

<?php

require("mysql.php");
    if(isset($_GET["del"])){
        if(!empty($_GET["del"])){
            $stmt = $mysql->prepare("DELETE FROM images WHERE id = :id ORDER BY id ASC");
            $stmt->execute(array(":id" => $_GET["del"]));
            ?>
            <p>Das Bild wurde gelöscht</p>
            <?php
        }
    }

$stmt = $mysql->prepare("SELECT * FROM images");
    $stmt->execute();
    while($row = $stmt->fetch()){
        ?>
        <tr>
        <td><?php echo $row["id"] ?></td>
        <td><?php echo $row["image_url"] ?></td>
        <td><a href="deleteimage.php?del=<?php echo $row["id"] ?>"><i class="fas fa-user-minus"></i></a></td>

        </tr>
        <?php
    }









?>




</table>
</body>
</html>