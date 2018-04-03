<?php
	include "database.php";
	
	
	if(isset($_POST["submit"])){
		$user = mysqli_real_escape_string($con, $_POST['user']);
		$message = mysqli_real_escape_string($con, $_POST['message']);
	}	
	date_default_timezone_set("Asia/Yangon");
	$time = date("h:i:s a",time());
	
	if(!isset($user) ||  $user=="" || !isset($message) ||  $message==""){
		$error = "Pleaser Enter user name and Message correctly.";
		
		header("Location: index.php?error=".urlencode($error));
		exit();
	}else{
		$query = "INSERT INTO shout_table ( user, message, time) VALUES ('$user', '$message', '$time')";
		
		if(!mysqli_query($con, $query)){
			die("Error: ".mysqli_error($con));
		}else{
			
			
			header("Location: index.php");
			exit();
		}
	}
?>