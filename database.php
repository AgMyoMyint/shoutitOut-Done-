<?php 

	$con = mysqli_connect("localhost","root","","shoutit");
	
	if(mysqli_connect_errno()) {
		echo  "Database connection error : ". mysqli_connect_error();
	}
?>