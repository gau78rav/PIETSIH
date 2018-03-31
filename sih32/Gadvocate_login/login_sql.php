<?php
if(isset($_POST['submit']))
{

require_once 'dbcon.php';

$license=$_POST["license"];
$password=$_POST["password"];
$captcha=$_POST['captcha'];

$q="SELECT `email` from `judge_advocate` where `bcn_id`='$license' && `passwd` ='$password'";
$result=mysqli_query($conn,$q);
$row = mysqli_fetch_assoc($result);
$num=mysqli_num_rows($result);	

if($num==1 )
{
	session_start();
	$_SESSION['email']=$row['email'];
	$_SESSION['bcn_no'] = $license;
    header('location:dashboard_advocate.php');
}
else
{
       header('location:loginformadvocate.php');
}
}


?>