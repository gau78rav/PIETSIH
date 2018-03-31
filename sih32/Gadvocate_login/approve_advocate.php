<?php
	session_start();
    require_once "dbcon.php";
?>
<?php 
	$case_no = $_POST['case_no'];
    $email=$_SESSION['email'];
    $bcn_no=$_SESSION['bcn_no'];
    if (isset($_POST['approve'])) {
    echo $query = "UPDATE `file_petition` SET `advocate_approval`=1, `status`=1 WHERE `case_no` = '".$case_no."' and `status`=0";
    $query_result = mysqli_query($conn, $query);
    }
    else {
      echo   $query = "UPDATE `file_petition` SET `advocate_reject`=1 WHERE `case_no` = '".$case_no."'";
    $query_result = mysqli_query($conn, $query);
    }
	header("location: home.php");
    //echo "<script>window.location.href='dashboard_advocate.php'</script>";
?>
