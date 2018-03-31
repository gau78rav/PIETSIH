<?php
if(isset($_POST['submit']))
{

$conn=mysqli_connect('localhost','root','');

$license=$_POST["license"];
$password=$_POST["password"];
$captcha=$_POST['captcha'];

mysqli_select_db($conn,'sih');
$q="SELECT * from judge_advocate where bcn_id='$license' && passwd='$password' && mobile='$captcha'";
$result=mysqli_query($conn,$q);
$num=mysqli_num_rows($result);	
$row=mysqli_fetch_row($result);
if($num==1 )
{
	session_start();
	$_SESSION['bcn_id']=$row[3];
	$_SESSION['fname']=$row[0];
	echo $_SESSION['bcn_id'];
     header('location:dashboard_judge.php');
}
else
{
       header('location:loginformjudge.php');
}
}


?>