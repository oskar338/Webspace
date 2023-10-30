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

$host = "localhost";
$name = "Login";
$user = "Login";
$passwort = "Mastsuim01#";

try{
    $mysql = new PDO("mysql:host=$host;dbname=$name", $user, $passwort);
} catch (PDOException $e){
    echo "SQL Error: ".$e->getMessage();
}

?>