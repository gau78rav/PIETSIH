<?php
if(isset($_POST['submit']))
{

	require_once 'dbcon.php';

	$email=$_POST["loginid1"];
	$password=$_POST["password"];
	$captcha=$_POST['captcha'];
	$pass=md5($password);

	$q = "SELECT * from `reg_client` where `email`='$email' AND `passwd`='$pass'";

	$result=mysqli_query($conn, $q);
	$num=mysqli_num_rows($result);	

	if( $num==1 )
	{
		session_start();
		$_SESSION['email']=$email;
	    header('location: dashboard.php');
	}
	else
	{
	       header('location: loginformclient.php');
	}
}


?>