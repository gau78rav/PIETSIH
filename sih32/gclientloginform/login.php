<?php
		session_start();
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

	if( $num==1 && $_SESSION['page_status']== 1)
	{
		$_SESSION['email']=$email;
		echo "<script>window.location.href='../instruction.php'</script>";
	}
	else if($num== 1)
	{	
	 	echo "<script>window.location.href='dashboard.php'</script>"; 
	}
	else
	{
	    echo "<script>window.location.href='loginformclient.php'</script>";
	}
}


?>