<?php
include("connection.php");
error_reporting(0);
?>



<!DOCTYPE html>
<html lang="en" class="no-js">
  
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <title>Vehicle Fitness Testing</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="BreezyCV - Resume / CV / vCard Template" />
    <meta name="keywords" content="vcard, resposnive, retina, resume, jquery, css3, bootstrap, portfolio" />
    <meta name="author" content="lmpixels" />
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="css/reset.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
    <link rel="stylesheet" href="css/animations.css" type="text/css">
    <link rel="stylesheet" href="css/perfect-scrollbar.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
	
	
	
    <script src="js/modernizr.custom.js"></script>
  </head>

  <body>
    <!-- Animated Background -->
    <div class="lm-animated-bg" style="background-image: url(img/main_bg.png);"></div>
    <!-- /Animated Background -->

    <!-- Loading animation -->
    <div class="preloader">
      <div class="preloader-animation">
        <div class="preloader-spinner">
        </div>
      </div>
    </div>
    <!-- /Loading animation -->

    <div class="page">
      <div class="page-content">

          <header id="site_header" class="header mobile-menu-hide cro">
            <div class="header-content" id="cro">
             <div class="header-photo">
                <img src="img/main_photo.jpg" alt="Alex Smith">
				
              </div>
              <div class="header-titles">
			  
			  
                
              </div>
            </div>


				
            <div class="social-links">
			
             
            </div>
			
            <div class="header-buttons">
              <a href="login.php" target="_parent"  class="btn btn-primary  ">SIGN IN</a>
            </div>
			
			<div class="header-buttons">
              <a href="register.php"  target="_parent" class="btn btn-primary ">SIGN UP</a>
            </div>

            <div class="copyrights">Designed by Hrishikesh Rathod</div>
          </header>

          <!-- Mobile Navigation -->
          <div class="menu-toggle">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <!-- End Mobile Navigation -->

          <div class="content-area single-page-area">
            <div class="single-page-content">

              
                <div class="page-title">
                  <h2>SIGN UP</h2>
                </div>
				
				<br>
				 <div class="block-title">
                        <h3>Please fill <span>  the form</span></h3>
                      </div>
				
					<form action="" method="post">

					<input type="text" name="u_email" placeholder="Email"  /><br><br>
					<input type="text" name="f_name" placeholder="First name"  /><br><br>
					<input type="text" name="l_name" placeholder="Last name"  /><br><br>
					<input type="date" name="u_bday" placeholder="Birth date"  /><br><br>
					<input type="text" name="u_mobile" placeholder="Mobile number"  /><br><br>
					<input type="text" name="password" placeholder="Password"/><br><br>
					<input type="submit" name="submit"  value="Register"/>
					</form>
				
				
					<?php
					$eml = $_POST['u_email'];
					$fn =  $_POST['f_name'];
					$ln =  $_POST['l_name'];
					$bd =  $_POST['u_bday'];
					$mb =  $_POST['u_mobile'];
					$pwd = $_POST['password'];
					$amd = $_POST['admin'];
					
					
					
				
					$query = "INSERT INTO `hrishi`.`users` (`u_email`, `f_name`, `l_name`, `u_bday`, `u_type`, `u_mobile`, `password`) VALUES ('$eml', '$fn', '$ln', '$bd', '$amd', '$mb', '$pwd')";
					$data = mysqli_query($conn,$query);

					if($data){
						
							header('location:login.php');	
					}
					
					?>
				

            </div>
          </div>

      </div>
    </div>

	<script> 
	function postValue(var para){
   var admin = para;
}
	const el = document.querySelector('.cro');

	el.scrollTop = 500;
	// get scroll position in px
console.log(el.scrollLeft, el.scrollTop);
	</script>
	
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/animating.js"></script>

    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src='../../../../../www.google.com/recaptcha/api.js'></script>

    <script src='js/perfect-scrollbar.min.js'></script>
    <script src='js/jquery.shuffle.min.js'></script>
    <script src='js/masonry.pkgd.min.js'></script>
    <script src='js/owl.carousel.min.js'></script>
    <script src="js/jquery.magnific-popup.min.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrDf32aQTCVENBhFJbMBKOUTiUAABtC2o"></script>
    <script src="js/jquery.googlemap.js"></script>
    <script src="js/validator.js"></script>
    <script src="js/main.js"></script>
  </body>

</html>
