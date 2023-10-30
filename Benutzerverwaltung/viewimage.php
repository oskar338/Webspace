<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<?php
require("mysql.php");

if(isset($_GET["id"])){
    if(!empty($_GET["id"])){
        $stmt = $mysql->prepare("SELECT * FROM images WHERE id = :id");
        $stmt->execute(array(":id" => $_GET["id"]));
        $row = $stmt->fetch();
        $image_url = $_SERVER['DOCUMENT_ROOT'] . "/geheim/uploads/" . $row["image_url"];
        
        // Foto anzeigen
        echo "<img src=\"$image_url\">";
    }
}
?>
    
</body>
</html>

