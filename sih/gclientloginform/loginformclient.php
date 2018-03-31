<?php

$length=5;
$chars = 'bcdfghjklmnpqrstvwxyzaeiou';
$result='';
for ($x = 0; $x < $length; $x++)
{
$t= ($x%2) ? $chars[mt_rand(19, 23)] : $chars[mt_rand(0, 18)];
$result=$result.$t;
}


?>

<!DOCTYPE html>
<html>
<head>
	<title></title>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">


	*
	{
		margin: 0px;
		padding:0px;
	}
		.header
		{
			
			width: 100%;
			height: 80px;
			background-color: #4866af;
		}
	    .heading1 h1
	    {
	    	float: left;
	    	font-weight: 400;
	    	color: white;
	    	margin-left: 90px;
	    	line-height: 80px;
	    }
	    .heading
	    {
	    	width:25%;
	    	height: 90%;
	    	float: left;
	    	
	    }

	    .heading1
	    {
	    	width:74%;
	    	height: 90%;
	    	float: left;
	    		
	    }
	    .heading h2
	    {
	    	font-weight: 400;
	    	color: white;

	    }
	    .heading h3
	    {
	    	font-weight: 400;
	    	color: white;

	    }
		.form-container
		{
			position: absolute;
			width: 35%;
			height: auto;
			top: 25%;
			left: 30%;
		}
		.title
		{
			width: 100%;
			height: 100px;
			background-color: #4866AF;
			font-size:30px;
			align-content: center;
			text-align: center;
			line-height: 100px;
			color: white;
			text-shadow: 0,0,10px,0;
			border-radius: 15px;



		}
       .main-input
       {
       	width: 100%;
       	height: 300px;
       	background-color: grey;
       	border-radius: 15px;
       	background-color: #F2F2F2;

       }
       .table1
       {
       	height:150px;
       	width: 90%;
      
        padding-top: 15px
       }
       table tr
       {
       	height: 50px;
       	width: 100%;
       	
       	align-self: center;
       	margin-top: 3px;
       }

        input
        {
        	height: 35px;
        	width: 100%;
        }
      button {
    background-color: #f36e21;
    color: #fff;
    border: 1px solid #f36e21;
    padding: 10px 20px;
    border-radius: 3px;
    cursor: pointer;
}

	</style>
</head>
<body>
<div class="header">
	<div class="heading1 ">
		<h1><i class="fa fa-key" style="margin-right: 10px;font-size: 35px"></i>Login Form for <b>Client</b></h1>
		<img src="img/satya.png" style="float: right;margin-top: 0px;" width="80" height="80"></div>
	        <div class="heading">
			<h2><b>National Judiciary Portal</b></h2>
			<h3 >Ministry of Justice & Law<br>Government of India</h3>
	</div>
</div>





<div class="form-container">
<div class="title">
<h3 style=";">

<i class="fa fa-key" style="margin-right: 10px;font-size: 35px"></i>Login As Client!!
</h3>

</div>
<div class="main-input">
<form action="login.php" method="POST"  >
	<table  class="table1">
<tr >
    <td >
        <center><i class="fa fa-user" style="font-size: 35px;"></i></center>
    </td>
    <td>
        <input type="text" name="loginid1" id="loginid1" placeholder="Email/Phone No...." autocomplete="off">
    </td>
</tr>

<tr>
<td>
   <center> <i class="fa fa-shield" style="font-size:35px"></i></center>
</td>
<td>
    <input type="password" name="password"  placeholder="Password...."  minlength="2" maxlength="10">
</td>
</tr>
	       <tr>
        <td >
            <center><i class="fa fa-qrcode" style="font-size: 35px;"></i></center>
        </td>
        <td>
            <input type="text" name="captcha" id="captcha" placeholder="Captcha..." >
             
        </td>
    </tr>
  
<tr>
<td></td>
<td>
    <button onclick="return validate()" name="submit" style="margin-right: 20px;float: left">
        <i class="fa fa-paper-plane" style=";"></i> Login
    </button>
    <span style="float: left;background-color: white;width: 100px;height: 40px;color: blue;font-size:20px;letter-spacing: 4px;text-align: center;line-height: 40px" id="random"><?php echo $result; ?></span>
</td>

</tr>


</table>
<table class="table2" style="width: 85%;margin-left: 70px;">
<tr>
	<td><a href="" style="font-size: 18px;text-decoration: none"><i class="fa fa-question-circle"></i>&nbsp Forgot Password ?</a></td>
	<td><a href="" style="font-size: 18px;text-decoration: none"><i class="fa fa-lock"></i>&nbsp Create New Account</a></td>
</tr>
</table>
</form>
</div>



</div>
</body>
</html>
