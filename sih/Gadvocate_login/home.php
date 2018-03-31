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
			<th>File1</th>
			<th>File2</th>
			<th>Type</th>
			<th>Opponent</th>
			<th>Approve/Reject</th>

		</tr>
		<?php

		$query1 = "select * from `file_petition` where file_petition.advocate_name = '".$_SESSION['bcn_no']."' AND `advocate_reject`=0 AND `status`=0 " ;
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
		echo "<form action='approve_advocate.php' method='POST'>";
			echo '<tr>';
				echo "<td>".$i." </td>";
				echo '<td width="300px;"><input type="text" name="case_no" value='.$query1_output['case_no']." readonly style='border: 0px;'></td>";
				echo "<td>".$query1_output['Place_of_matter']."</td>";
				echo "<td>".$query1_output['state_id']."</td>";
				echo "<td>".$query1_output['district_id']."</td>";
				echo "<td>".$query1_output['subject']."</td>";
				echo "<td>".$query1_output['description']."</td>";
				echo "<td>".$query1_output['date_time']."</td>";
				echo "<td>".$query1_output['affidavite']."</td>";
				echo "<td>".$query1_output['document']."</td>";
				echo "<td>".$query1_output['type']."</td>";
				echo "<td>".$name."</td>";
				echo '<td><input type="submit" name="approve" value="Approve"><input type="submit" name="reject" value="Reject" ></td>';
			echo '</tr>';
		echo "</form>";
			$i = $i+1;
		}
		?>
		

	</table>

</center>
</body>
</html>