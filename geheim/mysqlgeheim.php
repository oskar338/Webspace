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

$sname = "localhost";
$uname = "Login";
$password = "Mastsuim01#";

$db_name = "Login";

$conn = mysqli_connect($sname, $uname, $password, $db_name);

if (!$conn) {
	echo "Keine Verbindung möglich";
	exit();
}