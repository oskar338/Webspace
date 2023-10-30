<?php
require("mysql.php");

if(isset($_GET["id"])){
    if(!empty($_GET["id"])){
        $stmt = $mysql->prepare("SELECT * FROM images WHERE id = :id");
        $stmt->execute(array(":id" => $_GET["id"]));
        $row = $stmt->fetch();
        $image_url = "/httpdocs/geheim/uploads/" . $row["image_url"];
        
        // Foto anzeigen
        echo "<img src=\"$image_url\">";
    }
}
?>
    
</body>
</html>
