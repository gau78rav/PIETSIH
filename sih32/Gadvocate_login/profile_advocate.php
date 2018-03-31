<?php
session_start();
require_once 'dbcon.php';
if (!isset($_SESSION['email']) && !isset($_SESSION['bcn_no'])) {
        echo "<script>window.location.href='Gadvocate_login/loginformadvocate.php'</script>";
    exit();
}
if(isset($_SESSION['bcn_no']))
{
	$license=$_SESSION['bcn_no'];
}
$q="SELECT * from judge_advocate where bcn_id ='$license'";
$query=mysqli_query($conn,$q);
$row=mysqli_fetch_row($query);
if(mysqli_num_rows($query)==0)
{
    echo "no datbase is added";
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
			border:2px solid grey;
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
			width: 40%;
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
	</style>
</head>
<body>
<div class="big-wrapper">
<h2 class="">Profile  !</h2>
     <div class="wrapper">
    <span >First name</span>
    <div><?php echo $row[0] ?></div>
    </div>
    <div class="wrapper">
    <span >last name</span>
    <div ><?php echo $row[1] ?></div>
    </div>
    <div class="wrapper">
    <span>Gender</span>
    <div><?php echo $row[2] ?></div>
    </div>
    <div class="wrapper">
    <span>bcn_id</span>
    <div><?php echo $row[3] ?></div>
    </div>
    <div class="wrapper">
    <span>Date of Birth</span>
    <div><?php echo $row[4] ?></div>
    </div>
    <div class="wrapper">
    <span>mobile</span>
    <div><?php echo $row[5] ?></div>
    </div>
    <div class="wrapper">
    <span>email</span>
    <div><?php echo $row[7] ?></div>
    </div>
    
    <div class="wrapper">
      <span>Specialization</span>
    <div ><?php echo $row[14] ?></div>
    </div>
    <div class="wrapper">
      <span>type</span>
    <div ><?php echo $row[15] ?></div>
    </div>
    <div class="wrapper">
      <span>Graduation</span>
    <div ><?php echo $row[20] ?></div>
    </div>
    <div class="wrapper">
      <span>address</span>
    <div style="height: 40px;"><?php echo $row[9] ?></div>
    </div>

    <div class="wrapper">
      
    <div style="background-color: transparent;border-color: transparent;padding-top: 20px;"> <a href="update.php"><input type="submit" name="update" value="Edit Profile" style="border-radius: 4px;width: 100px;height: 30px;font-weight: 700;background-color:#4aefa7 "></div></a>
    </div>
</div>
</body>
</html>

