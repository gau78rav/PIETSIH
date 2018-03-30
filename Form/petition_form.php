<!DOCTYPE html>
<html>
<head>
	<title>File a Petition</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
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
</style>
<script>

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
</head>
<body>
	<h2 style="color: #1f5b8b"; align="center">File a Petition</h2>
	<div class="container card" style="width: 70%;">
		<form action="" method="">
		<div class="row" style="margin:2px 2px 2px 2px">
			<div class="col">
				<div class="row"><b>Place of Matter <span>*</span></b></div>
				<div class="row">
					<input class="form-control jk" type="text" name="place" placeholder="Place of Matter" required autofocus>
				</div>
				<div class="row"><b>Options/Self/Others <span>*</span></b></div>
				<div class="row">
					<select id="drop" class="form-control" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 1px 1px;" required>
						<option value="0">Select</option>
						<option value="self">Self</option>
						<option value="options">Options</option>
						<option value="other">Others</option>
					</select>
				</div>

				<div class="row"><b>Subject <span>*</span></b></div>
				<div class="row">
					<input class="form-control jk" type="text" name="subject" placeholder="Subject" required>
				</div>
				<div class="row"><b>Description <span>*</span></b></div>
				<div class="row">
					<textarea class="form-control area" rows="4" name="description"></textarea>
				</div>
			</div>
			<div class="col">
				<div id="1">
					<div class="row"><b>Advocate Name <span>*</span></b></div>
					<div class="row">
						<select id="001" class="form-control" style="width: 70%; border-width: 1.5px; border-radius: 6px; margin: 2px 2px; padding: 1px 1px;" disabled>
							<option value="">jQuery</option>
						</select>
					</div>
				</div>
				<div id="2">
					<div class="row"><b>Affidavite <span>*</span></b></div>
					<div class="row">
						<input id="002" class="form-control jk" type="file" name="affidavite" disabled>
					</div>
				</div>
				<div id="3`">
					<div class="row"><b>License Number <span>*</span></b></div>
					<div class="row">
						<input id="003" class="form-control jk" type="text" name="licence_no" placeholder="licence_no" disabled>
					</div>
				</div>
				<div class="row"><b>Date of Occurance <span>*</span></b></div>
				<div class="row">
					<input class="form-control jk" type="date" name="date" placeholder="Date of Occurance" required>
				</div>
				<div class="row"><b>Document <span>*</span></b></div>
				<div class="row">
					<input class="form-control jk" type="file" name="doc" required>
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