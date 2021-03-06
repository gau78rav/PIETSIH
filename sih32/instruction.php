<?php
  session_start();
  if (!isset($_SESSION['email'])) {
    $_SESSION['page_status'] = 1;
    echo "<script>window.location.href='gclientloginform/loginformclient.php'</script>";
  }
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="instruction.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta charset="utf-8">
    <title>Instruction</title>
    </head>
<body>

<div class="wrapper">
    <header >
        <div class="container">
        </div>
        <div class="logo">
            <img src="img/satya.png">
        </div>
        <div class="heading">
            <h1>National Judiciary Portal</h1>
            <h2>Ministry of Law & Justice<br>Government of India</h2>
            
        </div>
        <div class="add">
            <img src="img/bharat.png" style="">
            <img src="img/digital.png" style="padding-top: 20px">
            
        </div>
        <div class="icons">
            <ul>
                    <li><a href=""><i class="fa fa-unlock" aria-hidden="true"></i>&nbsp Login</a></li>
                    <li><a href=""><i class="fa fa-registered" aria-hidden="true"></i>&nbsp Register</a></li>
                </ul>
        </div>
    </header>
     
    <nav>
        <div class="navbar">
                <ul>
            <li><a href="index.html"><i class="fa fa-home"></i>&nbsp Home</a></li>
      <li><a href="aboutus.html"><i class="fa fa-user-circle-o"></i>&nbsp About-us</a></li>
      <li><a href=""><i class="fa fa-envelope"></i>&nbsp Mail-us</a></li>
      <li><a href="faq.html"><i class="fa fa-graduation-cap"></i>&nbsp FAQ</a></li>
      <li><a href="instruction.html"><i class="fa fa-file-text"></i>&nbsp File Petition</a></li>
    
        </ul>
        
        </div>

    </nav> 
    <div style="height: 30px"></div>
     
     <div style="margin-left: 120px; width: 80%;border: 2px double green;border-radius: 12px ;background-color: lightgrey"> 
        <div style="margin-left: 18px;margin-right: 18px;margin-top: 18px;margin-bottom: 18px;">
          <div style="width: 100%;height: 40px;background-color: #4866af;">
              <h3 style="font-size: 22px;color: white;margin-left: 20px;padding-top: 10px;"><center>Instructions for e-filling</center></h3>
          </div>

          <ul style="margin-left: 25px;font-size: 19px;margin-top: 20px">
             <li> First time users of E-filing have to register through the “Sign Up” option.</li>

             <li> Through e-filing only Advocate-On-Record and petitioner-in-person can file cases in the Court.</li>

             <li> Advocate option is to be chosen if you are an Advocate-On-Record otherwise choose in-person option if you are petitioner-in-person.</li>

             <li> For Advocate-On-Record, his/her code (Advocate-On-Record Code) would be “Login Id”, while in-person will create his/her “Login Id” through “Sign Up” option. Password needs to be entered the reafter.” Login Id” and “Password” will be created once the mandatory requirements are filled properly.</li>

             <li> After successful login “Disclaimer Screen” appears on the screen. Clicking “I agree” button on the disclaimer allows the user to proceed further.</li>

             <li> After successful login the user can file a case electronically.</li>

             <li> “New Case” option allows the user to file a new case.</li>

             <li> Court fee can be paid only through court.  </li>

             <li> Defects associated with the e-filed case will be e-mailed to the advocate/petitioner by the Court Registry.</li>


          </ul> <br>
          <p style="font-size: 19px;"><b>NOTE: Petition filed through e-mail are not accepted. For electronic filing of cases in Court use e-filing facility only.</b></p> <br>


          <style>
.agree {
  display: inline-block;
  border-radius: 4px;
  background-color: transparent;
  border: none;
  
  text-align: center;
  font-size: 23px;
  padding: 10px;
  width: 200px;
  transition: all 0.7s;
  cursor: pointer;
  margin: 5px;
}

.agree span {
  cursor: pointer;
  display: inline-grid;
  position: relative;
  transition: 0.5s;
}

.agree span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -50px;
  transition: 0.8s;
}

.agree:hover span {
  padding-right: 25px;
}

.agree:hover span:after {
  opacity: 8;
  right: 0;
}
</style>


<center><button class="agree"><a href="PetitionForm/petition_form.php" class="blinkbutton" style="color: white"><span><b>I Agree</b> </span></a></button></center><br><br><br>
        
        
        <div style="width: 100%;height: 40px;background-color: #4866af;">
              <h3 style="font-size: 22px;color: white;margin-left: 20px;padding-top: 10px;"><center>Procedures for filling of Case Offline </center></h3>
          </div>

          

           <ul style="margin-left: 25px;font-size: 19px;margin-top: 20px">
             <li> Hire a lawyer. Convey your facts to him. He will prepare the petition which will contain all the required affidavits, annexures (If any) and Notice of Motion to the other party.</li>

             <li> This will be filed at the filing counter in the Court.</li>

             <li> The matter will be listed for a future date.</li>

             <li> Your lawyer and you appear on the scheduled date and plead your case</li>

             <li> Here the court will either admit the petition or dismiss it.</li>

             <li> Where it admits it, it will send the notice of appearance to the opposite party (based on the Notice of Motion filed by you).</li>

             <li> Another date will be fixed for hearing in the presence of such other party (if it chooses to appear).</li>
        </ul><br>


        <p style="font-size: 20px;text-decoration: underline;"><b>Things to Note :-</b></p>
             <ul style="margin-left: 25px;font-size: 19px;margin-top: 12px">
                 <li> Where the petition is rejected on the first hearing, it is the end of the whole endeavour.</li>

                 <li> The fact that the petition is admitted in no way implies that your petition is considered worthy of relief prayed by you. Instead, it only means that the HC considers the matter worth hearing. The petition can still be dismissed at any time.</li>
             </ul>






           </div></div>
    <div style="width: 100%;height: 80px;background-color:#4866af;margin-top: 30px;">
                    <center><h4 style="color:white;font-size: 15px;padding-top: 25px;">"EVERYWHERE THERE IS ONE PRINCIPLE OF JUSTICE, WHICH IS THE INTEREST OF THE STRONGER".
                    </h4></center>
                    <h3 style="color: white;font-size: 18px;padding-top: 10px;">
                <center>copyright@National Judiciary Portal</center></h3>
    </div>




</div>
</body>
</html>