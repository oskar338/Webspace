<!DOCTYPE html>

</head>

<a href="geheimvideo.php">Zurück</a>
<title>suffkopp.com</title>
<link rel="stylesheet" href="/style/styleupload.css">

</head>

<?php 

if (isset($_POST['submit']) && isset($_FILES['my_video'])) {
	include "mysqlgeheim.php";

    $video_name = $_FILES['my_video']['name'];
    $tmp_name = $_FILES['my_video']['tmp_name'];
    $error = $_FILES['my_video']['error'];

	if ($error === 0) {
		
        $video_ex = pathinfo($video_name, PATHINFO_EXTENSION);

    	$video_ex_lc = strtolower($video_ex);

    	$allowed_exs = array("mp4", "mov", "m4v", 'webm', 'avi', 'flv');

            if (in_array($video_ex_lc, $allowed_exs)) {

                $new_video_name = uniqid("video-", true). '.'.$video_ex_lc;
    		    $video_upload_path = 'uploadvideos/'.$new_video_name;
    		    move_uploaded_file($tmp_name, $video_upload_path);

				// Insert into Database
                $sql = "INSERT INTO videos(video_url) 
                VALUES('$new_video_name')";
                mysqli_query($conn, $sql);
                header("Location: geheimvideo.php");
     }else {
         $em = "Sie können keine Dateien dieses Typs hochladen.";
         header("Location: geheimvideo.php?error=$em");
     }
 }

}else{
	header("Location: geheimvideo.php");
}
