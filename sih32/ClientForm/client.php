<?php
	require "dbcon.php";
	if (isset($_POST['submit']))
	 {
			$fname = mysqli_real_escape_string($conn, $_POST['fname']);
			$lname = mysqli_real_escape_string($conn, $_POST['lname']);
			$fathername = mysqli_real_escape_string($conn, $_POST['fathername']);
			$mothername = mysqli_real_escape_string($conn, $_POST['mothername']);
			$gender = mysqli_real_escape_string($conn, $_POST['gender']);
			$dob = mysqli_real_escape_string($conn, $_POST['dob']);
			$mobile = mysqli_real_escape_string($conn, $_POST['mobile']);
			$email = mysqli_real_escape_string($conn, $_POST['email']);
			$residence = mysqli_real_escape_string($conn, $_POST['residence']);
			$state = mysqli_real_escape_string($conn, $_POST['state']);
			$district = mysqli_real_escape_string($conn, $_POST['district']);
			$caste = mysqli_real_escape_string($conn, $_POST['caste']);
			$pwd = mysqli_real_escape_string($conn, $_POST['pwd']);
			$rpwd = mysqli_real_escape_string($conn, $_POST['rpwd']);
			$passwd = md5($pwd);
			$rpasswd = md5($rpwd);
			$activate = md5(rand(0,1000));
			$query = "INSERT INTO `reg_client`(`fname`, `lname`, `fathername`, `mothername`, `gender`, `dob`, `mobile`, `email`, `address`, `caste`, `state`, `district`, `passwd`, `hash`) VALUES ('".$fname."', '".$lname."', '".$fathername."', '".$mothername."','".$gender."', '".$dob."', '".$mobile."', '".$email."', '".$residence."', '".$caste."', '".$state."', '".$district."', '".$passwd."', '".$activate."') ";
				mysqli_query($conn, $query);
			
                     

	/*		
			$to      = $email; // Send email to our user
			$subject = 'Verification'; // Give the email a subject 
			$body = '
			 
			Thanks for signing up!
			Your account has been created, you can login after you have activated your account by pressing the url below.
			 
			Please click this link to activate your account:
			http://www.portal.com/client_verify.php?email='.$email.'&hash='.$activate.'
			';
			                     
			$headers = 'From:abc@portal.com' . "\r\n";
			mail($to, $subject, $body, $headers);
	*/

	}	
	header("location: ../gclientloginform/loginformclient.php")
?>