<?php
	session_start();
	require_once 'dbcon.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>File a Petition</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	input.jk[type="text"], input.jk[type="date"], input.jk[type="password"], input.jk[type="number"], input.jk[type="file"] {
		border-width: 1.5px;
		border-radius: 6px;
		width: 70%;
		margin: 2px 2px;
		padding: 2px 2px;
	}
	input.kl {
		border-width: 1.5px;
		border-radius: 6px;
		width: 80%;
	}
	.area {
		border-width: 1.5px;
		border-radius: 6px;
		margin: 2px 2px;
		padding: 2px 2px;
		width: 70%;	
	}
	.area2 {
		border-width: 1.5px;
		border-radius: 6px;	
		width: 105%;
	}
	#dynamic_field td{
		width: 29%;
	}
span{
	color: red;
}
.row select option
{
	color: black;
}

</style>

<script type="text/javascript">
function fetch_select_district(val)
{
 $.ajax({
 type: 'post',
 url: 'fetch_district_by_state.php',
 data: {
  get_option:val
 },
 success: function (response) {
  document.getElementById("new_select").innerHTML=response; 
 }
 });
}

function fetch_select(val)
{
 $.ajax({
 type: 'post',
 url: 'fetch_advocate.php',
 data: {
  get_option:val
 },
 success: function (response) {
  document.getElementById("001").innerHTML=response; 
 }
 });
}

	$(document).ready(function() {
 
 	$('#drop').change(function() {
  	if( $(this).val() == "self") {
       		$('#001').prop( "disabled", true );
    		$('#002').prop( "disabled", false );
	    	$('#003').prop( "disabled", true );
    } else if($(this).val() == "options"){     
    		$('#001').prop( "disabled", false );
	    	$('#002').prop( "disabled", true );
      		$('#003').prop( "disabled", true );
    } else if($(this).val() == "other"){       
      		$('#001').prop( "disabled", true );
    		$('#002').prop( "disabled", true );
      		$('#003').prop( "disabled", false );
    } else if($(this).val() == 0) {
    	$('#001').prop( "disabled", true );
    	$('#002').prop( "disabled", true );
    	$('#003').prop( "disabled", true );
    } 
  });
});

</script>

<?php
	if(isset($_POST['submit']))
{
	
	$place=mysqli_real_escape_string($conn,$_POST['place']);
	$state=mysqli_real_escape_string($conn,$_POST['state']);
	$district=mysqli_real_escape_string($conn,$_POST['district']);
	$adv_selection=mysqli_real_escape_string($conn,$_POST['adv_selection']);
	$subject=mysqli_real_escape_string($conn,$_POST['subject']);
	$description=mysqli_real_escape_string($conn,$_POST['description']);
	$type=mysqli_real_escape_string($conn,$_POST['type']);
	//$advocate=mysqli_real_escape_string($conn,$_POST['advocate']);
	//$affidavite=mysqli_real_escape_string($conn,$_POST['affidavite']);  //File
	
	$date_form=mysqli_real_escape_string($conn,$_POST['date']);
	$state_code = substr ($state ,0 , 3);
	$state_name_id = strtolower($state_code);
	$district_name_id = strtolower(substr ($district ,0 , 3));
	$date=date("dmY");	
	$case_no = $state_name_id.$district_name_id.$date;
	$_SESSION['case_no'] = $case_no;
	$filename = $_FILES["zip_file"]["name"];
	$source = $_FILES["zip_file"]["tmp_name"];
	$type_file = $_FILES["zip_file"]["type"];
	
	$name = explode(".", $filename);
	$accepted_types = array('application/zip', 'application/x-zip-compressed', 'multipart/x-zip', 'application/x-compressed');
	foreach($accepted_types as $mime_type) {
		if($mime_type == $type_file) {
			$okay = true;
			break;
		} 
	}
	
	$continue = strtolower($name[1]) == 'zip' ? true : false;
	if(!$continue) {
		$message = "The file you are trying to upload is not a .zip file. Please try again.";
	}

	$target_path = "upload/".$filename;  // change this to the correct site path
	if(move_uploaded_file($source, $target_path)) {
		$zip = new ZipArchive();
		$x = $zip->open($target_path);
		if ($x === true) {
			$zip->extractTo("upload/"); // change this to the correct site path
			$zip->close();
	
			unlink($target_path);
		}
		$message = "Your .zip file was uploaded and unpacked.";
	} else {	
		$message = "There was a problem with the upload. Please try again.";
	}


	if($adv_selection === 'self') {
		$affidavite = $_FILES['affidavite']['name'];
		echo $query = "INSERT INTO `file_petition`(`case_no`, `Place_of_matter`, `state_id`, `district_id`, `option_self_other`, `subject`, `description`, `advocate_name`, `affidavite`, `license_no`, `type`, `date_time`, `document`) VALUES ('".$case_no."', '".$place."', '".$state."', '".$district."', '".$adv_selection."', '".$subject."', '".$description."', '', '".$affidavite."', '', '".$type."', '".$date_form."', '".$filename."')" ;
		$query_run = mysqli_query($conn, $query);
		move_uploaded_file($_FILES['affidavite']['tmp_name'], "upload/".$affidavite);
		var_dump($query_run);
	}
	if($adv_selection === 'options') {
		$advocate_name = mysqli_real_escape_string($conn,$_POST['advocate_name']);
		$query = "INSERT INTO `file_petition`(`case_no`, `Place_of_matter`, `state_id`, `district_id`, `option_self_other`, `subject`, `description`, `advocate_name`, `affidavite`, `license_no`, `type`, `date_time`, `document`) VALUES ('".$case_no."', '".$place."', '".$state."', '".$district."', '".$adv_selection."', '".$subject."', '".$description."', '".$advocate_name."', '', '', '".$type."', '".$date_form."', '".$filename."')" ;
		$query_run = mysqli_query($conn, $query);
	}
	if($adv_selection === 'other') {
		$licence_no=mysqli_real_escape_string($conn,$_POST['licence_no']);
		echo $query = "INSERT INTO `file_petition`(`case_no`, `Place_of_matter`, `state_id`, `district_id`, `option_self_other`, `subject`, `description`, `advocate_name`, `affidavite`, `license_no`, `type`, `date_time`, `document`) VALUES ('".$case_no."', '".$place."', '".$state."', '".$district."', '".$adv_selection."', '".$subject."', '".$description."', '', '', '".$licence_no."', '".$type."', '".$date_form."', '".$filename."')" ;
		$query_run = mysqli_query($conn, $query);
		var_dump($query_run);
	}

	

//File Upload (ZIP)
	

}
?>
</head>
<body>
	<h2 style="color: #1f5b8b"; align="center">File a Petition</h2>
	<div class="container card" style="width: 70%;">
		<form action="#" method="POST" enctype="multipart/form-data">
		<div class="row" style="margin:2px 2px 2px 2px">
			<div class="col-md-6">
				<div class="row"><b>Place of Matter <span>*</span></b></div>
				<div class="row">
					<input class="form-control jk" type="text" name="place" placeholder="Place of Matter" required autofocus>
				</div>
				<div class="row"><b>State <span>*</span></b></div>
				<div class="row">
				<select class="form-control" name="state" onchange="fetch_select_district(this.value);" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 2px 2px;" required>
					<?php
						$query = "select `state_name` from `state_list`";
  						$state_query =mysqli_query($conn, $query);
					    while($row=mysqli_fetch_array($state_query))
					    {
					     echo "<option>".$row['state_name']."</option>";
					    }
					 ?>
				</select>
				</div>
				<div class="row"><b>District <span>*</span></b></div>
				<div class="row">
					<select class="form-control" name="district" id="new_select" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 2px 2px;" required>
					</select>
				</div>
				<div class="row"><b>Options/Self/Others <span>*</span></b></div>
				<div class="row">

				<select id="drop" class="form-control" name="adv_selection" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 1px 1px;" required>
						<option value="0">Select</option>
						<option value="self">Self</option>
						<option value="options">Options</option>
						<option value="other">Others</option>
					</select>
				</div>
                 
				<div class="row"><b>Subject <span>*</span></b></div>
				<div class="row">
					<select id="drop" class="form-control" name="subject" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 1px 1px;" onchange="fetch_select(this.value);"  required>
						<option value="Landlord&Tenant issue">Landlord&Tenant issue</option>
						<option value="Divorce&Family claims">Divorce&Family claims</option>
						<option value="Tort claims">Tort claims</option>
						<option value="Contract claims">Contract claims</option>
					</select>
				</div>
				<div class="row"><b>Description <span>*</span></b></div>
				<div class="row">
					<textarea class="form-control area" rows="4" name="description"></textarea>
				</div>
			</div>
			<div class="col-md-6">
				<div>
					<div class="row"><b>Advocate Name <span>*</span></b></div> 
					<div class="row">
						<select id="001" class="form-control" name="advocate" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 1px 1px;" >
							
						</select>
					</div>
				</div>
				<div>
					<div class="row"><b>Affidavite <span>*</span></b></div>
					<div class="row">
						<input id="002" class="form-control jk" type="file" name="affidavite" disabled>
					</div>
				</div>
				<div>
					<div class="row"><b>License Number <span>*</span></b></div>
					<div class="row">
						<input id="003" class="form-control jk" type="text" name="licence_no" placeholder="licence_no" disabled>
					</div>
				</div>
				<div>
					<div class="row"><b>Type <span>*</span></b></div>
					<div class="row">
						<select class="form-control" name="type" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 1px 1px;" >
							<option value="civil">Civil</option>
							<option value="criminal">Criminal</option>
							<option value="other">Other</option>
						</select>
					</div>
				</div>
				<div class="row"><b>Date of Occurance <span>*</span></b></div>
				<div class="row">
					<input class="form-control jk" type="date" name="date" placeholder="Date of Occurance" required>
				</div>
				<div class="row"><b>Document <span>*</span></b></div>
				<div class="row">
					<input class="form-control jk" type="file" name="zip_file" required>
				</div>
			
	<input type="submit" class="btn btn-primary" name="submit" value="Next" style="margin-left:70% ; margin-top: 4%;width: 100px;letter-spacing: 1px; ">
</div>
		</div></form>
<form name="add_name" id="add_name">
			<div class="row">
		<table class="table table-responsive" id="dynamic_field"  style="margin-top: 20px;padding: 5px;width: 95%;">
			<tr>
				<td width="50%">
					<b>Opponent's name <span>*</span></b>
				</td>
				<td>
					<b>Opponent's Father name <span>*</span></b>
				</td>
				<td>
					<b>Opponent address <span>*</span></b>
				</td>
				<td>
					<button type="button" name="add" id="add" class="btn btn-danger">Add More</button>
				</td>
			</tr>
			<tr>
				<td>
						<input class="form-control name_list kl" type="text" name="opponent_name[]" placeholder="Opponent's Name" required>
				</td>
				<td>
						<input class="form-control name_list kl" type="text" name="opponent_f_name[]" placeholder="Opponent's Father's Name" required>
				</td>
				<td>
						<textarea class="form-control name_list kl area2" rows="4" name="opponent_add[]" placeholder="Opponent's Address" required></textarea>
				</td>
				<td></td>
			</tr>
		</table>
		<input type="submit" name="update" id="submit" class="btn btn-primary" value="File Petition" style="margin-left:82% ; margin-top: 1%;letter-spacing: 1px;">
	</div>
</form>
	</div>
	<br><br>
</body>
</html>
 <script>  
 $(document).ready(function(){  
      var i=1;  
      $('#add').click(function(){  
           i++;  
           $('#dynamic_field').append('<tr id="row'+i+'"><td><input class="form-control name_list kl" type="text" name="opponent_name[]" placeholder="Opponents Name" required></td><td><input class="form-control name_list kl" type="text" name="opponent_f_name[]" placeholder="Opponents Fathers Name" required></td><td><textarea class="form-control area2 name_list" rows="4" name="opponent_add[]" placeholder="Opponents Address" required></textarea></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });  
      $('#submit').click(function(){            
           $.ajax({  
                url:"add_field.php",
                method:"POST",  
                data:$('#add_name').serialize(),  
                success:function(data)  
                {  
                     alert(data);  
                     $('#add_name')[0].reset();
                }  
           });  
      });  
 });  
 </script>