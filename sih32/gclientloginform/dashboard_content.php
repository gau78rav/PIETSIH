<?php
	session_start();
	require_once 'dbcon.php';

	?>
	<style type="text/css">
		table
		{
			width: 1100px;
			text-align: center;
		}
		table th,td
		{
			width:280px;
		}
		table tr th
		{
			font-size: 18px;
			border-right: 2px solid black;
			border-bottom: 2px solid black; 
		}
			table tr
			{

			}
	</style>
<!DOCTYPE html>
<html>
<head>
	<title>Dashboard Home</title>
</head>
<body>
	<?php

	?>
	<center><table >
		<tr>
			<th>S.No.</th>
			<th>Case Number</th>
			<th>Place of Matter</th>
			<th>State</th>
			<th>Distdict</th>
			<th>Subject</th>
			<th>Description</th>
			<th>Date</th>
			<th>Advocate Name</th>
			<th>License Number</th>
			<th>Type</th>
			<th>Opponent</th>
		</tr>
		<?php

		$query1 = "select * from `file_petition` where file_petition.client_email = '".$_SESSION['email']."'" ;
		$query1_run = mysqli_query($conn, $query1);
			
		$i=1;
		while ($query1_output = mysqli_fetch_assoc($query1_run)) {
			$query2 = "select * from `opponent_record` where opponent_record.`case_no` = '".$query1_output['case_no']."'" ;
			$query2_run = mysqli_query($conn, $query2);
			$name='';
			while ( $row = mysqli_fetch_assoc($query2_run)) {
				$name .=$row['opponent_name'].", ";
			}
			$name = rtrim($name, ', ');
		
			echo '<tr>';
				echo "<td>".$i." </td>";
				echo "<td>".$query1_output['case_no']."</td>";
				echo "<td>".$query1_output['Place_of_matter']."</td>";
				echo "<td>".$query1_output['state_id']."</td>";
				echo "<td>".$query1_output['district_id']."</td>";
				echo "<td>".$query1_output['subject']."</td>";
				echo "<td>".$query1_output['description']."</td>";
				echo "<td>".$query1_output['date_time']."</td>";
				echo "<td>".$query1_output['advocate_name']."</td>";
				echo "<td>".$query1_output['license_no']."</td>";
				echo "<td>".$query1_output['type']."</td>";
				echo "<td>".$name."</td>";
			echo '</tr>';
			$i = $i+1;
		}
		?>
	</table>

</center>
</body>
</html>