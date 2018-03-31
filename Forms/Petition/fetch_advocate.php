<?php
require_once 'dbcon.php';
 if(isset($_POST['get_option']))
{
 $special =   $_POST['get_option'];
 $query = "SELECT `fname` from `judge_advocate` where `specialization` = '".$special."' AND `user_type` = 'advocate' ";


 $advocates = mysqli_query($conn, $query);
 while($row=mysqli_fetch_array($advocates))
 {
  echo "<option value=".$row['fname'].">".$row['fname']."</option>";

 }
 exit;
}
?>