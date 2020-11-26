<?php
	$servername = "localhost";
	$username = "root";
	$password = "T";
	$dbname = "test";
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Daily Chat</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div align="center" class="row">
			<a href="index.php"><img class="img-responsive" src="logo.png" alt="logo"/></a>
	</div>
	<br><div class="row">
	<div class="col-md-6">  
	<form action="#" method="POST" enctype="multipart/form-data">
	<div class="form-group">
	<label for="email">Write Message:</label>
	<textarea class="form-control" required id="message" name="message"></textarea>
	</div>
	<button type="submit" name="submit" class="btn btn-default">Submit</button>
	</form>
	<?php
		if(isset($_POST['submit']))
		{
			$message=$_POST['message'];	
			
			$sql = "INSERT INTO daily_chat (message, status) VALUES ('$message', 1)";

			if ($conn->query($sql) === TRUE) {
			  echo "<script>alert('posted')</script>";
			} else {
			  echo "Error: " . $sql . "<br>" . $conn->error;
			}
		}
	?>
	</div>
	<br>
	<div class="col-md-6">   
	<table class="table table-bordered">
	<thead>
	<tr>
	<th>Messages</th>
	</tr>
	</thead>
	<tbody>
	<?php

		$sql = "SELECT * FROM daily_chat WHERE status=1 ORDER BY timestamp DESC";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		  // output data of each row
		  while($row = $result->fetch_assoc()) {
			echo "<tr><td>#".$row["id"]."&nbsp;".$row["timestamp"]."&nbsp;<a href='index.php?id=".$row["id"]."'><u>x</u></a><br>".$row["message"]."</td></tr>";
		  }
		} else {
		  echo "0 results";
		}
	?>
		<?php
			if(isset($_GET['id']))
			{
				$id=$_GET['id'];
				$sql = "UPDATE daily_chat SET status=0 WHERE id=$id";

				if ($conn->query($sql) === TRUE) {
				  echo "<script>alert('deleted!')</script>";
				} else {
				  echo "Error: " . $sql . "<br>" . $conn->error;
				}
			}
		?>
	</tbody>
	</table>
	</div>
	</div>
</div>
</body>
</html>