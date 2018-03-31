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
			margin-top: 10px;
			width: 15%;
			height: auto;
			float: left;

		}
		.list ul
	{
		 list-style: none;
		 width: 100%;
		 height:300px;
		border-radius: 5px;
		font-size: 1.1em;

	
		padding-top: 10px;	
         border-radius:10px;

	}
	.list ul li
	{

            
	    	width: 97%;
	    	height: 80px;
	    	align-content:center;
	    	display: block;
	    	
	    	text-align: center;
	    	border:2px groove;
	    	border-radius: 7px;
	    	line-height: 30px;
	    	margin:auto;
	    	text-shadow: 0px 1px 0px black;
	    	

	}
	.list ul li a
	{
		text-decoration: none;
		font-weight:600;
		font-size: 1em;
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
	    	box-shadow: 10px,20px,10px,10px
	    }
         

     .navbar
     {
     	width: 100%;
     	height: 40px;
     	background-color:#4866af;
     }
		.navbar ul
	{
		 list-style: none;
		 width: 70%;
		 line-height: 100%;
		 height:100%;

	}
	.navbar ul li
	{

	    	width: 19%;
	    	align-content:center;
	    	height: 100%;
	    	float: left;
	    	display: block;
	    	line-height: 50px;
	    	text-align: center;
	    	border-right: 1px solid white;
	    	height: 100%;

	}
	.navbar ul li a
	{
		text-decoration: none;
		font-weight: 700;
		font-size: 20px;
		color: white;
		
	}
	.navbar input
	{
		float: left;


	}

	.navbar ul li a i
	{
		color: grey;
		margin-top: 50px;

	}

	     .navbar1
     {
        margin-top: 10px;
     	width: 100%;
     	height: 40px;
     	
     	background-color:#4866af;
     }
		.navbar1 ul
	{
		 list-style: none;
		 float: right;
		 width: 10%;
		 line-height: 100%;
		 height:100%;
		 border-left:10px solid white;

	}
	.navbar1 ul li
	{

	    	width: 49%;
	    	align-content:center;
	    	height: 100%;
	    	float: right;
	    	display: block;
	    	line-height: 40px;
	    	text-align: center;
	    	height: 100%;

	}
	.navbar1 ul li a
	{
		text-decoration: none;
		font-weight: 700;
		font-size: 1.2em;
		color: white;
	}
	.navbar1 input
	{
		float: left;


	}
    .para
    {
    	width: 80%;
    	float: left;
    	color: white;
    	padding-top: 10px;
        font-weight:500;
        font-family: 'arial'
    }
	</style>

</head>
<body>
<div class="header">
	<div class="heading1">
		<h1>Hello !! (logged in as Judge)</h1>
		<img src="img/satya.png" style="float: right;margin-top: 0px;" width="80" height="80"></div>
	        <div class="heading">
			<h2><b>National Judiciary Portal</b></h2>
			<h3 >Ministry of Justice & Law<br>Government of India</h3>
	</div>
</div>
    <nav>
    	
    	<div class="navbar1">
            <div class="para"><marquee><p>WE ARE PART OF HACKATHON#2018 AND WE ARE ENJOYING IT. WE ARE PART OF HACKATHON#2018 AND WE ARE ENJOYING IT</p></marquee></div>
    			<ul>
			<li style="
	    	border-left:1px solid white;"><a href=""><i class="fa fa-bell-o"></i></a></li>
			<li><a href="" ><i class="fa fa-user-circle-o" aria-hidden="true"></i></a></li>
		
		</ul>
		
    	</div>

    </nav>

<div class="main-content">
	<div class="list">
		<ul>
			<li style="background-color:#2B669B ;color: white"><i class="fa fa-dashboard" style="color: white"></i><br><a href="home.php" target="output" style="color: white">Dashboard</a></li>
			<li><i class="fa fa-bell-o"></i><br><a href="">Status</a></li>
			<li><i class="fa fa-user-o"></i><br><a href="profile_judge.php" target="output">Profile</a></li>

			<li><i class="fa fa-home"></i><br><a href="logout.php" >Logout</a></li>
		</ul>
	</div>
	<div class="content">
	<iframe src="" name="output" frameborder="0" ></iframe>
	</div>
</div>


</body>
</html>