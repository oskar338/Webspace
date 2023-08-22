<?php include "mysqlgeheim.php"; ?>

<?php
session_start();
if(!isset($_SESSION["username"])){
  header("Location: index.html");
  exit;
}

?>

<!DOCTYPE html>
<html lang="de" dir="ltr">

<head>

<meta charset="utf-8">
<title>suffkopp.com</title>
<link rel="stylesheet" href="/style/stylegeheimvideo.css">

</head>
<body>

<a href="geheimimage.php">Zurück</a>
<p style="visibility:hidden">
 AAAA
</p>
<a href="#anker">Runter</a>

<div class="alb">
	<?php 
		$sql = "SELECT * FROM videos ORDER BY id DESC";
		$res = mysqli_query($conn, $sql);

	if (mysqli_num_rows($res) > 0) {
		while ($video = mysqli_fetch_assoc($res)) { 
	?>
		 		
	<video src="uploadvideos/<?=$video['video_url']?>" 
		controls>
	</video>

	<?php 
	}}
	?>
	</div>

<?php if (isset($_GET['error'])) {  ?>
		<p><?=$_GET['error']?></p>
	<?php } ?>

<form action="uploadvideo.php"
    method="post"
    enctype="multipart/form-data">

<input type="file" id="Bildup" name="my_video">
<label for="Bildup">Video Auswählen</label>

<input type="submit" 
    name="submit"
	value="Hochladen">
     	
</form>

</body>

</html>