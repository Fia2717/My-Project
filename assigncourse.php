<html>
<!DOCTYPE html>
<html lang="en">
   <head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Course Advisor</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="vendors/animate-css/animate.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style.css">
	<style>
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 9px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
#up{
	
	  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 10px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}
</style>
</head>
  <body>
   <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      
	 
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="adminhome.html" class="nav-link">Home</a></li>
	          <li class="nav-item   "><a href="assigncourse.php" class="nav-link">Assign course</a></li>
			  <li class="nav-item"><a href="viewroadmap.php" class="nav-link">Roadmap</a></li>
			  <li class="nav-item"><a href="admincontact.php" class="nav-link">Contact Us</a></li>
	          <li class="nav-item"><a href="home.php" class="nav-link">sign out</a></li>
	          <!--<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>-->
	         
	        </ul>
	      </div>
	    </div>
	  </nav>

   <section class="ftco-consultation">
    	<div class="container-fluid">
    		<div class="row d-md-flex">
    			<div class="half order-md-last mt-md-0 d-flex justify-content-center align-items-center img" >
    				<div class="overlay"></div>
    				<div class="desc text-center">
    					<div class="icon"><i class="fa fa-book" style="font-sie:48px;color:orange"></i></div>
    					<h1><a href="index.html">ADVISOR <br><span>Course Advisory system</span></a></h1>
    				</div>
					
					
    			</div>
    			<div class="half p-3 p-md-5 ftco-animate">
    				<h3 class="mb-4">Assign Course</h3>
					
					<td> <b><i> List of Courses:</i></b> </td>
                <td>
                    <?php
					$link = mysqli_connect("localhost", "root", "", "cacourseadvisor");
if($link)
{
	
	echo "";
}
    // Check connection

    if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }

                        $result = mysqli_query($link,"SELECT * FROM course");

echo " ";
?>
Course Code
<?php
while($row = mysqli_fetch_array($result))
	
{
                    ?>
					<tr><td>
					
					<?php echo $row['coursecode']?> 
                    <?php
                            }
                        ?>
						
                </td>
				</tr>
				</table>
				
				
				

                    <?php
					$link = mysqli_connect("localhost", "root", "", "cacourseadvisor");
if($link)
{
	
	echo "";
}
    // Check connection

    if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }

                        $result = mysqli_query($link,"SELECT * FROM instructor");

echo " "; ?>
 <br><b><i>List of Teachers</i>
<?php
while($row = mysqli_fetch_array($result))
{?>
       
				<tr><td>
					<?php echo $row['iUserName']?>
                    <?php
                            }
                        ?>
                </td>
				</tr>
				</table>
    				<form action="inscrssem.php" method="POST">
	            <div class="form-group">
	              <input type="text" class="form-control" placeholder="Course code"id="COURSEss" name="COURSEss">
	            </div>
	            <div class="form-group">
	              <input type="text" class="form-control" placeholder="Teacher id " id="INSTRUCTOR" name="INSTRUCTOR">
	            </div>
	          
	            <div class="form-group">
	              <input type="text" class="form-control" placeholder="semester" id="SEMESTER" name="SEMESTER">
	            </div>
	            <div class="form-group">
	              <input type="submit" value="save" class="btn btn-primary">
	            </div>
	          </form>
    			</div>
    		</div>
    	</div>
    </section>	
	
				

<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Top Products</h4>
					<ul>
						<li><a href="#">Managed Website</a></li>
						<li><a href="#">Manage Reputation</a></li>
						<li><a href="#">Power Tools</a></li>
						<li><a href="#">Marketing Service</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Quick Links</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Features</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">Guides</a></li>
						<li><a href="#">Research</a></li>
						<li><a href="#">Experts</a></li>
						<li><a href="#">Agencies</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6 single-footer-widget">
					<h4>Newsletter</h4>
					<p>You can trust us. we only send promo offers,</p>
					<div class="form-wrap" id="mc_embed_signup">
						<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
						 method="get" class="form-inline">
							<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address'"
							 required="" type="email">
							<button class="click-btn btn btn-default">
								<span>subscribe</span>
							</button>
							<div style="position: absolute; left: -5000px;">
								<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
							</div>

							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>
			<script>
			function showDiv() {
   document.getElementById('welcomeDiv').style.display = "block";
}
			</script>
			<div class="row footer-bottom d-flex justify-content-between">
				<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">Copyright © 2018 All rights reserved | This template is
					made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a></p>
				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!--================ End footer Area  =================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/stellar.js"></script>
	<script src="js/countdown.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/owl-carousel-thumb.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="vendors/counter-up/jquery.counterup.js"></script>
	<script src="js/mail-script.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>
    
  </body>
</html>