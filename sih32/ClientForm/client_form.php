<?php
	require_once "dbcon.php";
?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration | Client</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	input[type="text"], input[type="date"], input[type="password"], input[type="number"]{
		border-width: 1.5px;
		border-radius: 6px;
		width: 70%;
		margin: 2px 2px;
		padding: 2px 2px;
	}
	textarea {
		border-width: 1.5px;
		border-radius: 6px;
		margin: 2px 2px;
		padding: 2px 2px;	
	}
span{
	color: red;
}
</style>

<script type="text/javascript">
function fetch_select(val)
{
 $.ajax({
 type: 'post',
 url: 'fetch_district_by_state.php',
 data: {
  get_option:val
 },
 success: function (response) {
  document.getElementById("new_select").innerHTML=response; 
 }
 });
}

</script>

</head>
<body>
	<h2 style="color: #1f5b8b"; align="center">Sign Up - Client</h2>
	<form action="client.php" method="post">
	<div class="container card" style="width: 50%;">
		<div class="row" style="margin:2px 2px 2px 2px">
			<div class="col">
				<div class="row"><b>First Name <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="text" name="fname" placeholder="First Name" required autofocus>
				</div>
				<div class="row"><b>Last Name <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="text" name="lname" placeholder="Last Name" required>
				</div>
				<div class="row"><b>Mother's Name <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="text" name="mothername" placeholder="Mother's Name" required>
				</div>
				<div class="row"><b>Father's Name <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="text" name="fathername" placeholder="Father's Name" required>
				</div>
				<div class="row"><b>Gender <span>*</span></b></div>
				<div class="row">
					<select  class="form-control" name="gender" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 1px 1px;" required>
						<option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Other">Others</option>
					</select>
				</div>
				<div class="row"><b>Email <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="text" name="email" placeholder="Email" required>
				</div>
				<div class="row"><b>Password <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="password" name="pwd" placeholder="Password"  maxlength="20" minlength="8"  required>
				</div>
				<div class="row"><b>Re-Type Password <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="password" name="rpwd" placeholder="Re-Type Password" required>
				</div>
			</div>
			<div class="col">
				<div class="row"><b>DOB <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="date" name="dob" placeholder="Date of Birth" required>
				</div>
				<div class="row"><b>Caste <span>*</span></b></div>
				<div class="row">
					<select class="form-control" name="caste" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 2px 2px;" required>
						<option value="General">General</option>
						<option value="SC">SC</option>
						<option value="ST">ST</option>
						<option value="OBC">OBC</option>
					</select>
					
				</div>
				<div class="row"><b>Contact Number <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="number" name="mobile" placeholder="Contact Number" required>
				</div>
				<div class="row"><b>Residence Address <span>*</span></b></div>
				<div class="row">
					<textarea class="form-control" name="residence" cols="40" rows="4" placeholder="Residence Address" required></textarea>
				</div>
				<?php
				?>
				<div class="row"><b>State <span>*</span></b></div>
				<div class="row">
				<select class="form-control" name="state" onchange="fetch_select(this.value);" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 2px 2px;" required>
					<?php
						$query = "select `state_name` from `state_list`";
  						$state_query =mysqli_query($conn, $query);
					    while($row=mysqli_fetch_array($state_query))
					    {
					     echo "<option>".$row['state_name']."</option>";
					    }
					 ?>
				</select>
				</div>
				<div class="row"><b>District <span>*</span></b></div>
				<div class="row">
					<select class="form-control" name="district" id="new_select" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 2px 2px;" required>
					</select>
				</div>
			</div>
		</div>
	</div>
	<input type="submit" name="submit" value="Sign Up" style="margin-left: 65%; margin-top: 1%; background-color: lightgrey;">
</form>
</body>
</html>