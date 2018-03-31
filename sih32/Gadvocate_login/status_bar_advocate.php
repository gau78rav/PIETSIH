<?php
	session_start();
	require_once 'dbcon.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		*
		{
			margin:0px;
			padding: 0px;
		}
		div
		{
			position: absolute;
			top: 25%;
			height: 25%;

		}
		#circle1
		{
			position: relative;
			content:'';
			width: 30px;
			height: 30px;
			border-radius:30px;
			float: left;
			margin-left: 100px 
		}
		#circle1:before
		{
			
			position: absolute;
			content:'';
			top:-12%;
			left: -13%;
			width: 35px;
			border: 2px solid grey;
			height: 35px;
			border-radius:35px; 
		}
		#circle1:after
		{
				position: absolute;
			content:'';
			top: 45%;
			left: 30%;
			width: 150px;
			background-color: grey;
			height: 2px;
		 

		}
		#circle2
		{
			position: relative;
			content:'';
			width: 30px;
			height: 30px;
			border-radius:30px;
			float: left;
			margin-left: 100px 
		}
		#circle2:before
		{
			
			position: absolute;
			content:'';
			top:-12%;
			left: -13%;
			width: 35px;
			border: 2px solid grey;
			height: 35px;
			border-radius:35px; 
		}
		#circle2:after
		{
				position: absolute;
			content:'';
			top: 45%;
			left: 30%;
			width: 150px;
			background-color: grey;
			height: 2px;
		 

		}
		#circle3
		{
			position: relative;
			content:'';
			width: 30px;
			height: 30px;
			border-radius:30px;
			float: left;
			margin-left: 100px 
		}
		#circle3:before
		{
			
			position: absolute;
			content:'';
			top:-12%;
			left: -13%;
			width: 35px;
			border: 2px solid grey;
			height: 35px;
			border-radius:35px; 
		}
		#circle3:after
		{
			position: absolute;
			content:'';
			top: 45%;
			left: 30%;
			width: 150px;
			background-color: grey;
			height: 2px;
		 

		}
		#circle4
		{
			position: relative;
			content:'';
			width: 30px;
			height: 30px;
			border-radius:30px;
			float: left;
			margin-left: 100px 
		}
		#circle4:before
		{
			
			position: absolute;
			content:'';
			top:-12%;
			left: -13%;
			width: 35px;
			border: 2px solid grey;
			height: 35px;
			border-radius:35px; 
		}
		#circle4:after
		{
				position: absolute;
			content:'';
			top: 45%;
			left: 30%;
			width: 150px;
			background-color: grey;
			height: 2px;
		 

		}
		#circle5
		{
			position: relative;
			content:'';
			width: 30px;
			height: 30px;
			border-radius:30px;
			float: left;
			margin-left: 100px 
		}
		#circle5:before
		{
			
			position: absolute;
			content:'';
			top:-12%;
			left: -13%;
			width: 35px;
			border: 2px solid grey;
			height: 35px;
			border-radius:35px; 
		}

		.tags
		{
           margin-left: 180px
		}
		.tags ul
		{

			width: 800px;
			list-style-type: none;


		}
		.tags ul li
		{

			width: 130px;
          float: left;
       
		}
	</style>
</head>
<body>
	
<?php
	$query = "select `status`, `case_no`, `date_time` from `file_petition` where `advocate_name` = '".$_SESSION['bcn_no']."'";
	$status_query = mysqli_query($conn, $query);
	while ($status = mysqli_fetch_assoc($status_query)) {
		echo "<h3>".$status['case_no']."</h3>";
		echo "<h3>".$status['date_time']."</h3>";

	if($status['status'] == 0 ) {
			echo '<div id="circle1" style="background-color:yellow;"></div>';
			echo '<div class="tags"><ul><li>Verified By Advocate</li></ul></div>';
	}
	if($status['status'] == 1 ) {

			echo '<div id="circle1" style="background-color:green;"></div>';
				
			echo '<div id="circle2" style="background-color:yellow;"></div>';
					echo '	<div class="tags"><ul><li>Verified By Advocate</li><li>Verified by Court</li></ul></div>';
	}
	if($status['status'] == 2 ) {
			echo '<div id="circle1" style="background-color:green;"></div>';
			echo '<div id="circle2" style="background-color:green;"></div>';
			echo '<div id="circle3" style="background-color:yellow;"></div>';

			echo '<div class="tags"><ul><li>Verified By Advocate</li><li>Verified by Court</li><li>First Hearing</li></ul></div>';
	}
	if($status['status'] == 3 ) {
			echo '<div id="circle1" style="background-color:green;"></div>';
			echo '<div id="circle2" style="background-color:green;"></div>';
			echo '<div id="circle3" style="background-color:green;"></div>';
			echo '<div id="circle4" style="background-color:yellow;"></div>';

			echo '<div class="tags"><ul><li>Verified By Advocate</li><li>Verified by Court</li><li>First Hearing</li><li>Second Hearing</li></ul></div>';
}
	if($status['status'] == 4 ) {
			echo '<div id="circle1" style="background-color:green;"></div>';

			echo '<div id="circle2" style="background-color:green;"></div>';
			echo '<div id="circle3" style="background-color:green;"></div>';
			echo '<div id="circle4" style="background-color:green;"></div>';
			echo '<div id="circle5" style="background-color:yellow;"></div>';

			echo '<div class="tags"><ul><li>Verified By Advocate</li><li>Verified by Court</li><li>First Hearing</li><li>Second Hearing</li><li>Third Hearing</li></ul></div>';

	}
	echo "<br><br><br><br><br><br><br><br>";
}

?>
<span></span>
</div>
</body>
</html>
<script type="text/javascript">
</script>