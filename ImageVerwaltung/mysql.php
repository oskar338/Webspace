<?php
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