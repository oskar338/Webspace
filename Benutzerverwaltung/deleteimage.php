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







?>




</table>
</body>
</html>