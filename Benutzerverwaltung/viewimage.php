<?php
require("mysql.php");

if(isset($_GET["id"])){
    if(!empty($_GET["id"])){
        $stmt = $mysql->prepare("SELECT * FROM images WHERE id = :id");
        $stmt->execute(array(":id" => $_GET["id"]));
        $row = $stmt->fetch();
        $image_url = $_SERVER['DOCUMENT_ROOT'] . "/geheim/uploads/" . $row["image_url"];
        
        // Display image
        echo "<img src=\"$image_url\">";
    }
}
?>