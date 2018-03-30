<?php
require_once 'dbcon.php';
if(isset($_POST['get_option']))
{
 $state =  $_POST['get_option'];
 $query_for_id = "select `state_id` from `state_list` where `state_name` = '".$state."'";
 $state_id=mysqli_query($conn, $query_for_id);
	$state_id=mysqli_fetch_array($state_id);
	$state_id = $state_id['state_id'];

$query = "select `d_name` from `district_list` where district_list.s_id = '".$state_id."'" ;
 $district_list = mysqli_query($conn, $query);
 while($row=mysqli_fetch_array($district_list))
 {
  echo "<option value='".$row['d_name']."'>".$row['d_name']."</option>";
 }
 exit;
}
?>