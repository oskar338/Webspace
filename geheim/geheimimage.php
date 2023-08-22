<?php include "mysqlgeheim.php"; ?>

<?php
session_start();
if(!isset($_SESSION["username"])){
  header("Location: index.html");
  exit;
}

 ?>

<!DOCTYPE html>

<html>

</head>
<link rel="stylesheet" href="/style/stylegeheim.css">
</head>

<body>

<a href="geheimvideo.php">Videos</a>
<p style="display: none">
    aaaaaaaaa
</p>

<a href="#anker">Runter</a>

<?php 
	$sql = "SELECT * FROM images ORDER BY id DESC";
    $res = mysqli_query($conn,  $sql);

    if (mysqli_num_rows($res) > 0) {
    while ($images = mysqli_fetch_assoc($res)) {  ?>
             
<div class="alb">
    <img src="uploads/<?=$images['image_url']?>">
</div>
          		
<?php } }?>
	<?php if (isset($_GET['error'])): ?>
	<p><?php echo $_GET['Fehler']; ?></p>
<?php endif ?>

<form action="uploadimage.php"
    method="post"
    enctype="multipart/form-data">

<input type="file" id="Bildup" name="my_image">
<label for="Bildup">Bild Auswählen</label>

<input type="submit" 
    name="submit"
	value="Hochladen">    	
</form>

<a name="anker"></a>

</body>
</html>