<?php
session_start();
require_once 'dbcon.php';
if(isset($_SESSION['bcn_id']))
{
	$license=$_SESSION['bcn_id'];
	
}
$q="SELECT * from  judge_advocate where bcn_id ='$license'";
$query=mysqli_query($conn,$q);
$row=mysqli_fetch_row($query);

if(mysqli_num_rows($query)==0)
{
    echo "no datbase is added";
}
if(isset($_POST['update']))
{
	
	$mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
	$email = mysqli_real_escape_string($conn, $_POST['email']);

	$dob = mysqli_real_escape_string($conn, $_POST['dob']);
	$specialization = mysqli_real_escape_string($conn, $_POST['specialization']);
	$graducation=mysqli_real_escape_string($conn,$_POST['graducation']);
	$address = mysqli_real_escape_string($conn, $_POST['address']);	
	$experience = mysqli_real_escape_string($conn, $_POST['exp']);
	$oldpassword = mysqli_real_escape_string($conn, $_POST['oldpassword']);
	$newpassword = mysqli_real_escape_string($conn, $_POST['newpassword']);

	
	if($row[8]==md5($oldpassword))
	{
		
		
			
		$newpassword=md5($newpassword);
			$q="UPDATE `judge_advocate` SET `dob`='$dob',`mobile`='$mobile',`email`='$email',`passwd`='$newpassword',`address`='$address',`experience`='$experience',`specialization`='$specialization',`education`='$graducation' WHERE `bcn_id`='$license'";
			
			$query=mysqli_query($conn,$q);

			header('location:profile_advocate.php');
	}
	else
		echo "gaurav";
		
	



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
    <div><input type="text" name="fname" value='<?php echo $row[0] ?>' placeholder="fname" disabled></div>
    </div>

    <div class="wrapper">
    <span>Last Name</span>
    <div><input type="text" name="lname" value='<?php echo $row[1] ?>' placeholder="lname" disabled></div>
    </div>
    <div class="wrapper">
    <span>mobile</span>
    <div><input type="number" name="mobile" value='<?php echo $row[5] ?>'placeholder="mobile"></div>
    </div>
    <div class="wrapper">
    <span>email</span>
    <div><input type="email" name="email" value='<?php echo $row[7] ?>' placeholder="email" ></div>
    </div>
     <div class="wrapper">
    <span>bcn_id</span>
    <div> <input type="text" name="bcn_id" value='<?php echo $row[3] ?>' placeholder="license" disabled></div>
    </div>
    <div class="wrapper">
    <span>dath-of-birth</span>
    <div> <input type="text" name="dob" value='<?php echo $row[4] ?>' placeholder="Dath-of-birth"></div>
    </div>
    <div class="wrapper">
    <span>specialization</span>
    <div> <input type="text" name="specialization" value='<?php echo $row[14] ?>' placeholder="specialization"></div>
    </div>
    <div class="wrapper">
    <span>graducation</span>
    <div> <input type="text" name="graducation" value='<?php echo $row[20] ?>' placeholder="graducation"></div>
    </div>
     <div class="wrapper">
    <span>address</span>
    <div> <input type="text" name="address" value='<?php echo $row[9] ?>'  placeholder="address"></div>
    </div>
     <div class="wrapper">
    <span>experience</span>
    <div> <input type="text" name="exp" value='<?php echo $row[13] ?>'  placeholder="exp"></div>
    </div>
    <div class="wrapper">
    <span>old password</span>
    <div> <input type="password" name="oldpassword" value=""  placeholder="old password"></div>
    </div>
     <div class="wrapper">
    <span>new password</span>
    <div> <input type="password" name="newpassword" value=""  placeholder="new password"></div>
    </div>
      
      
     
    <div style="background-color: transparent;border-color: transparent;padding-top: 20px;"> <input type="submit" name="update" value="update" style="border-radius: 4px;width: 70px;height: 30px;font-weight: 700;background-color:#4aefa7 "></div>
    </div>
</form>
</div>
</body>
</html>