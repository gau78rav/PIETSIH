<?php
	require "dbcon.php";
//http://www.portal.com/client_verify.php?email='.$email.'&hash='.$hash.'
	if(isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['hash']) && !empty($_GET['hash'])){
	    // Verify data
	    $email = mysqli_real_escape_string($conn, $_GET['email']); // Set email variable
	    $hash = mysqli_real_escape_string($conn, $_GET['hash']); // Set hash variable
		$search = mysqli_real_query($conn, "SELECT email, hash, active FROM `clientreg` WHERE email='".$email."' AND hash='".$hash."' AND active='0'") or die("Error in verify"); 
		$match = mysqli_num_rows($search);
	 
		if($match > 0){
		    // We have a match, activate the account
		    mysql_query($conn, "UPDATE `clientreg` SET active='1' WHERE email='".$email."' AND hash='".$hash."' AND active='0'") or die("Error In Updating");
			echo 'Your account has been activated, you can now login';
		}else{
		    // No match -> invalid url or account has already been activated.
			echo 'The url is either invalid or you already have activated your account.';
		}
	}
	else {
		//not valid
		echo 'Invalid approach, please use the link that has been send to your email.';
	}
?>