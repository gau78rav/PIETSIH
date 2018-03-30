<?php
if(isset($_POST['submit']))
{

$conn=mysqli_connect('localhost','root','');

$license=$_POST["license"];
$password=$_POST["password"];
$captcha=$_POST['captcha'];

mysqli_select_db($conn,'sih_db');
$q="SELECT * from judge_advocate where bcn_id='$license' && passwd='$password'";
$result=mysqli_query($conn,$q);
$num=mysqli_num_rows($result);	

if($num==1 )
{
	session_start();
	$_SESSION['bcn_id']=$license;
	echo $_SESSION['bcn_id'];
     header('location:dashboard_advocate.php');
}
else
{
       header('location:loginformadvocate.php');
}
}


?>