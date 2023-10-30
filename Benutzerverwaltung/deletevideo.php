<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Imageverwaltung</title>
    <link rel="stylesheet" href="/style/styleimageverwaltung.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js"></script>

</head>
<body>

<a href="Benutzerverwaltung.php">Zur Benutzerverwaltung</a><br>
<a href="../index.php">Zurück zur Starseite</a><br>

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
        $stmt = $mysql->prepare("SELECT * FROM videos WHERE id = :id");
        $stmt->execute(array(":id" => $_GET["del"]));
        $row = $stmt->fetch();
        $video_url = $_SERVER['DOCUMENT_ROOT'] . "/geheim/uploadvideos/" . $row["video_url"];

        // Lösche Video von Dateisystem
        unlink($video_url);
        
        // Lösche Video von Datenbank
        $stmt = $mysql->prepare("DELETE FROM videos WHERE id = :id");
        $stmt->execute(array(":id" => $_GET["del"]));

    }
}

$stmt = $mysql->prepare("SELECT * FROM videos ORDER BY id DESC");
    $stmt->execute();
    while($row = $stmt->fetch()){
        ?>
        <tr>
        <td><?php echo $row["id"] ?></td>
        <td><?php echo $row["video_url"] ?>
        <td><a href="deletevideo.php?del=<?php echo $row["id"] ?>"><i class="fas fa-user-minus"></i></a></td>
        </tr>
        <?php
    }
?>

</table>
</body>
</html>