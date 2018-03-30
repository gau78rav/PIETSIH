<?php
if(isset($_POST['submit']))
{

$conn=mysqli_connect('localhost','root','');

$username=$_POST["loginid1"];
$password=$_POST["password"];
$captcha=$_POST['captcha'];

mysqli_select_db($conn,'sih_db');
$q="SELECT * from reg_client where fname='$username' && passwd='$password'";
$result=mysqli_query($conn,$q);
$num=mysqli_num_rows($result);	

if($num==1 )
{
	session_start();
	$_SESSION['fname']=$username;
	echo $_SESSION['fname'];
     header('location:dashboard.php');
}
else
{
       header('location:loginformclient.php');
}
}


?>