S<?php  
 $connect = mysqli_connect("localhost", "root", "", "sih");  
 $number = count($_POST["opponent_name"]);
 if($number > 0)
 {
      for($i=0; $i<$number; $i++)  
      {  
           if(trim($_POST["opponent_name"][$i] != '') || ($_POST["opponent_f_name"][$i] != '') || ($_POST["opponent_add"][$i] != ''))  
           {  
                $sql = "INSERT INTO `opponent_record`(`case_no`, `opponent_name`, `fathers_name`, `address`) VALUES ('1' ,'".mysqli_real_escape_string($connect, $_POST["opponent_name"][$i])."','".mysqli_real_escape_string($connect, $_POST["opponent_f_name"][$i])."','".mysqli_real_escape_string($connect, $_POST["opponent_add"][$i])."' )" ;
                mysqli_query($connect, $sql);  
           }
      }
      echo "Data Inserted";  
 }
 else  
 {  
      echo "Please Enter Name";  
 }  
?>