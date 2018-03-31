<?php  
session_start();
	require_once 'dbcon.php';
 $number = count($_POST["opponent_name"]);
 if($number > 0)
 {
      for($i=0; $i<$number; $i++)  
      {  
           if(trim($_POST["opponent_name"][$i] != '') || ($_POST["opponent_f_name"][$i] != '') || ($_POST["opponent_add"][$i] != ''))  
           {  
                $opponent_name = mysqli_real_escape_string($conn, $_POST["opponent_name"][$i]) ;
           		$opponent_f_name = mysqli_real_escape_string($conn, $_POST["opponent_f_name"][$i]);
           		$opponent_add = mysqli_real_escape_string($conn, $_POST["opponent_add"][$i]);
                $sql = "INSERT INTO `opponent_record`(`case_no`, `opponent_name`, `fathers_name`, `address`) VALUES ('".$_SESSION['case_no']."' ,'".$opponent_name."','".$opponent_f_name."','".$opponent_add."' )" ;
                mysqli_query($conn, $sql);  
           }
      }
      echo "Data Inserted";  
 }
 else  
 {  
      echo "Please Enter Name";  
 }  
?>