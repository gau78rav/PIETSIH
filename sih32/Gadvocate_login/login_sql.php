<?php
session_start();
require_once 'dbcon.php';
if (!isset($_SESSION['email']) && !isset($_SESSION['bcn_no'])) {
   	echo "<script>window.location.href='Gadvocate_login/loginformadvocate.php'</script>";
 	exit();
}
if(isset($_POST['submit']))
{
	$license=$_POST["license"];
	$password=$_POST["password"];
	$captcha=$_POST['captcha'];
	$q="SELECT `email` from `judge_advocate` where `bcn_id`='$license' && `passwd` ='$password'";
	$result=mysqli_query($conn,$q);
	$row = mysqli_fetch_assoc($result);
	$num=mysqli_num_rows($result);	

if($num==1 )
{
	$_SESSION['email']=$row['email'];
	$_SESSION['bcn_no'] = $license;
    echo "<Script>window.location.href'dashboard_advocate.php'";
}
else
{
  	echo "<script>window.location.href'loginformadvocate';</script>";
}
}

?>