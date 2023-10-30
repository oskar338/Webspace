<?php  

$sname = "localhost";
$uname = "Login";
$password = "Mastsuim01#";

$db_name = "Login";

$conn = mysqli_connect($sname, $uname, $password, $db_name);

if (!$conn) {
	echo "Keine Verbindung möglich";
	exit();
}