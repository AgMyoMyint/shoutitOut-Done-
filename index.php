<?php 

include "database.php";


?>

<?php 

 $query  = 'Select * from shout_table';
 $shouts = mysqli_query($con, $query);

?>

<!Doctype html>
<html>

<head>
		<meta charset="uft-8"/>
		<title> SHOUT IT! </title>
		
	<link rel="stylesheet"  href="css/style.css" type="text/css" /> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

</head>

<body>
<div class="container " style="">
	
	<div class="row div_row" style="">
		<div class="col-md-2" ></div>
		<div class="col-md-8  " > 
				<div class="row text-center" > 
				
					<h1 > :::::::::::::::::: Chat System ::::::::::::::::::   </h1>
				</div>
		</div>
		<div class="col-md-2" ></div>

	</div>
	
	
	<div class="row div_row" style="">
		<div class="col-md-2" ></div>
		<div class="col-md-8 div_black_background" style=""> 
		
				<div class="row text-center" style=""> 	
					<h3 class="font_color_white"> Shoutbox </h1>
				</div>
			
				<div class="row chat_cover_parent_height" style="">
					<div class="col-md-1"></div>
					<div class="col-md-10" > 
						<ul class="col-md-12 div_chat_cover" style="">
							
							<?php while($row = mysqli_fetch_assoc($shouts)) : ?>
							
							
							<li class="row div_message_line" style="">
									
									<span class="col-md-3 word-wrap" style=""> 
										<strong> <?php  echo $row['user'];   ?> </strong> 
										
										
									</span> 
									<span class="col-md-9 word-wrap" style=" ">	
										<?php  echo $row['message'];   ?>  
										<span class="time" > 
											<small> 
												<?php  $time = date("h:i A",strtotime($row['time']));   ?>
												<?php  echo $time;   ?>  
											</small> 
										</span> 
									</span>  
							</li>
							
							<?php endwhile; ?>
						
						</ul>
					</div>	
					<div class="col-md-1"></div>	
				</div>
		
				<div class="row" style="">
		
					<div class="col-md-1"></div>
					<div class="col-md-10 div_two_textboxes" style="">
						<?php if(isset($_GET["error"])) : ?>
							<div  class="error_message" style="" >
						
								<?php echo $_GET["error"]; ?>
							
							</div>		
						<?php endif ; ?>						
						<form method="post" action="process.php">
							<div  class="row" style="" >
								<div class="col-md-4" > 
									<input class="form-control" type="text" style="" placeholder="Enter Name : "  name="user">
								</div>
						
								<div class="col-md-8" > 
									<input class="form-control"  type="text"  style=""  placeholder="Enter Text... " name="message">
								</div>
							</div>
							
							
							
							<div  class="row div_button" style="">
								<div class="col-md-12" > 
									<input class="btn btn-primary btn-block btn_color"  type="submit" value="Send" name="submit">
								</div>
							</div>
						</form>
					</div>
					
					<div class="col-md-1"></div>
				</div>
				
		</div>
		<div class="col-md-2" ></div>
	</div>

	
	<div class="row div_row" style="">
		<div class="col-md-2" ></div>
		<div class="col-md-8  " > 
				<div class="row text-center" > 
				
					<h1 > ***********************************   </h1>
				</div>
		</div>
		<div class="col-md-2" ></div>

	</div>
	

</div>
</body>

</html>