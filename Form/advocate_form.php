<!DOCTYPE html>
<html>
<head>
	<title>Registration | Advocate</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	input[type="text"], input[type="date"], input[type="password"], input[type="number"], select{
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
	span {
		color: red;
	}
</style>
</head>
<body>
	<h2 style="color: #1f5b8b"; align="center">Sign Up - Advocate</h2>
	<form>
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
				<div class="row"><b>Email <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="text" name="email" placeholder="Email" required>
				</div>
				<div class="row"><b>Password <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="password" name="pwd" placeholder="Password" maxlength="20" minlength="8" required>
					<small id="passwordHelpBlock" class="form-text text-muted">Your password must be 8-20 characters long, contain letters and numbers.
					</small>
				</div>
				<div class="row"><b>Re-Type Password <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="password" name="rpwd" placeholder="Re-Type Password" required>
				</div>
			</div>
			<div class="col">
				<div class="row"><b>Specialization <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="text" name="specialization" placeholder="Specialization" required>
				</div>
				<div class="row"><b>Bar Council Number <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="number" name="bcn" placeholder="Bar Council Number" required>
				</div>
				<div class="row"><b>Contact Number <span>*</span></b></div>
				<div class="row">
					<input class="form-control" type="number" name="mobile" placeholder="Contact Number" required>
				</div>
			</div>
		</div>
	</div>
	<input type="submit" name="submit" value="Sign Up" style="margin-left: 65%; margin-top: 1%; background-color: lightgrey;">
</form>
</body>
</html>