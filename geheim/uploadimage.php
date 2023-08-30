<!DOCTYPE html>

<head>

<a href="geheimimage.php">Zurück</a>
<title>suffkopp.com</title>
<link rel="stylesheet" href="/style/styleupload.css">

</head>

<?php 

if (isset($_POST['submit']) && isset($_FILES['my_image'])) {
	include "mysqlgeheim.php";

	$img_name = $_FILES['my_image']['name'];
	$tmp_name = $_FILES['my_image']['tmp_name'];
	$error = $_FILES['my_image']['error'];

	if ($error === 0) {
		
			$img_ex = pathinfo($img_name, PATHINFO_EXTENSION);
			$img_ex_lc = strtolower($img_ex);
			$allowed_exs = array("jpg", "jpeg", "png", "heic"); 

			if (in_array($img_ex_lc, $allowed_exs)) {
				$new_img_name = uniqid("IMG-", true).'.'.$img_ex_lc;
				$img_upload_path = 'uploads/'.$new_img_name;
				move_uploaded_file($tmp_name, $img_upload_path);

				// Insert into Database
				$sql = "INSERT INTO images(image_url) 
				        VALUES('$new_img_name')";
				mysqli_query($conn, $sql);
				header("Location: geheimimage.php");
			}else {
				$em = "Sie können keine Dateien dieses Typs hochladen";
		        header("Location: geheimimage.php?error=$em");
			}
		}
}else {
				header("Location: geheimimage.php");
}