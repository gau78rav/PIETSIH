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


   .list
		{
			width: 20%;
			height: auto;
			float: left;

		}
		.list ul
	{
		 list-style: none;
		 width: 100%;
		 height:400px;
		border-radius: 5px;
		font-size: 1.2em;
		letter-spacing: 1px;
		padding-top: 10px


	}
	.list ul li
	{

            
	    	width: 97%;
	    	height: 70px;
	    	align-content:center;
	    	display: block;
	    	
	    	text-align: center;
	    	border:5px groove;
	    	border-radius: 5px;
	    	line-height: 30px;
	    	margin:auto;
	    	
	    	

	}
	.list ul li a
	{
		text-decoration: none;
		font-weight:600;
		font-size: 1.1em;
		color: grey;
		
	}
	.list ul li i
	{
		font-size: 1.2em;
		color: grey
	}





		.main-content
		{
			width: 100%;
			height: auto;
			border: 1px solid grey;
			box-shadow: 10px,20px,10px,10px
		
		}
		
		.content
		{
			height: auto;
			width: 79.5%;
	         margin-top: 10px;
			float: left;
		}
	    .content iframe
	    {
	    	width: 100%;
	    	height: 500px;
	    	border: 4px solid grey;
			box-shadow: 10px,20px,10px,10px
	    }

	</style>

</head>
<body>
<div class="header">
	<div class="heading1">
		<h1>Dashboard</h1>
		<img src="img/satya.png" style="float: right;margin-top: 0px;" width="80" height="80"></div>
	        <div class="heading">
			<h2><b>National Judiciary Portal</b></h2>
			<h3 >Ministry of Justice & Law<br>Government of India</h3>
	</div>
</div>


<div class="main-content">
	<div class="list">
		<ul>
			<li style="background-color:#4866af ;color: white"><i class="fa fa-dashboard" style="color: white"></i><br><a href="home.php" target="output" style="color: white">Dashboard</a></li>
			<li><i class="fa fa-bell"></i><br><a href="">Notification</a></li><li><i class="fa fa-angle-double-up"></i><br><a href="">Status</a></li>
			<li><i class="fa fa-user"></i><br><a href="profile_advocate.php" target="output">Profile</a></li>

			<li><i class="fa fa-home"></i><br><a href="logout.php" >Logout</a></li>
		</ul>
	</div>
	<div class="content">
	<iframe src="" name="output" ></iframe>
	</div>
</div>


</body>
</html>