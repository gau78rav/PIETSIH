<?php
session_start();
$conn=mysqli_connect("localhost","root","","sih_db");
if(isset($_SESSION['fname']))
{
	$username=$_SESSION['fname'];
	
}
if(isset($_POST['update']))
{
	$fname = mysqli_real_escape_string($conn, $_POST['fname']);
	$lname = mysqli_real_escape_string($conn, $_POST['lname']);
	$mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
	$email= mysqli_real_escape_string($conn, $_POST['email']);
	$address = mysqli_real_escape_string($conn, $_POST['address']);
	$passwd = mysqli_real_escape_string($conn, $_POST['passwd']);
$q="UPDATE reg_client SET fname='$fname', lname='$lname',mobile='$mobile',email='$email',address='$address',passwd='$passwd', where fname='$username'";
$query=mysqli_query($conn,$q);
header('location:profile_client.php');
}
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		.big-wrapper
    {
    	width: 50%;
    	height: auto;
    	margin: auto;
    }
		.wrapper div{
			
			width: 90%;
			
			opacity: .8;
			border-radius: 5px;
			text-align:center;
			height: 20px;
			line-height: 20px;
			color:grey;
			margin-top: 5px;
		}
		.wrapper
		{
			width: 45%;
			height: 50px;
			float: left;
		}
		span:after
		{
			content:'*';
			color: red;

		}
		span
		{
			font-weight: 500;
			font-size: 1.1em;
		}
		input
		{
			width: 100%;
			height: 22px;
			padding: 0px;
			margin: 0px;
			border-color: grey;
			border:2px solid grey;
			border-radius: 5px;

		}
	</style>
</head>
<body>
<div class="big-wrapper">
<h1>Edit Your <b>Profile</b></h1>
<form action="#" method="post">
	 <div class="wrapper">
    <span >First name</span>
    <div><input type="text" name="fname" value="" placeholder="first name"></div>
    </div>
    <div class="wrapper">
    <span >last name</span>
    <div ><input type="text" name="lname" value="" placeholder="last name"></div>
    </div>
    <div class="wrapper">
    <span>mobile</span>
    <div><input type="number" name="mobile" value="" placeholder="mobile"></div>
    </div>
    <div class="wrapper">
    <span>email</span>
    <div><input type="email" name="email" value="" placeholder="email"></div>
    </div>
     <div class="wrapper">
    <span>Address</span>
    <div> <input type="text" name="address" value="" placeholder="address"></div>
    </div>
      <div class="wrapper">
    <span>Password</span>
    <div> <input type="password" name="passwd" value="" placeholder="password"></div>
    </div>
      <div class="wrapper">
      
    <div style="background-color: transparent;border-color: transparent;padding-top: 20px;"> <input type="submit" name="update" value="update" style="border-radius: 4px;width: 70px;height: 30px;font-weight: 700;background-color:#4aefa7 "></div>
    </div>
</form>
</div>
</body>
</html>