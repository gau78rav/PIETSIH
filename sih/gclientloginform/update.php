<?php
session_start();
$conn=mysqli_connect("localhost","root","","sih");
if(isset($_SESSION['email']))
{
	$username=$_SESSION['email'];
	
}
$q="SELECT * from reg_client where email='$username'";
$query=mysqli_query($conn,$q);
$row=mysqli_fetch_row($query);
 
if(mysqli_num_rows($query)==0)
{
    echo "no datbase is added";
}
if(isset($_POST['update']))
{
	$fname = mysqli_real_escape_string($conn, $_POST['fname']);
	$lname = mysqli_real_escape_string($conn, $_POST['lname']);
	$mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
	
	$address = mysqli_real_escape_string($conn, $_POST['address']);
	$oldpassword = mysqli_real_escape_string($conn, $_POST['oldpassword']);
	$newpassword = mysqli_real_escape_string($conn, $_POST['newpassword']);
	$repassword = mysqli_real_escape_string($conn, $_POST['repassword']);
	
	if($row[9]==md5($oldpassword))
	{
		
		if(md5($newpassword)==md5($repassword))
		{
			
			$newpassword=md5($newpassword);
			$q="UPDATE reg_client SET fname='$fname',lname='$lname',mobile='$mobile',address='$address',passwd='$newpassword' where email='$username'";
			
			$query=mysqli_query($conn,$q);

			header('location:profile_client.php');
		}
		else
		{
			echo "password not match ";
		}
	}



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
    <span>First Name</span>
    <div><input type="text" name="fname" value=<?php echo $row[1] ?> placeholder="fname"></div>
    </div>

    <div class="wrapper">
    <span>Last Name</span>
    <div><input type="text" name="lname" value=<?php echo $row[2] ?> placeholder="lname"></div>
    </div>
    <div class="wrapper">
    <span>mobile</span>
    <div><input type="number" name="mobile" value=<?php echo $row[7] ?> placeholder="mobile"></div>
    </div>
    <div class="wrapper">
    <span>email</span>
    <div><input type="email" name="email" value=<?php echo $row[8] ?> placeholder="email" disabled></div>
    </div>
     <div class="wrapper">
    <span>Address</span>
    <div> <input type="text" name="address" value=<?php echo $row[10] ?> placeholder="address"></div>
    </div>
    <div class="wrapper">
    <span>Old Password</span>
    <div> <input type="password" name="oldpassword" value="" placeholder="old password"></div>
    </div>
    <div class="wrapper">
    <span>New Password</span>
    <div> <input type="password" name="newpassword" value="" placeholder="new password"></div>
    </div>
     <div class="wrapper">
    <span>Re Password</span>
    <div> <input type="password" name="repassword" value="" placeholder="new password"></div>
    </div>
      
     
    <div style="background-color: transparent;border-color: transparent;padding-top: 20px;"> <input type="submit" name="update" value="update" style="border-radius: 4px;width: 70px;height: 30px;font-weight: 700;background-color:#4aefa7 "></div>
    </div>
</form>
</div>
</body>
</html>