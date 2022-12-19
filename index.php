<?php
include('includes/config/config.php');
include('includes/classes/Animal.php');
include('includes/classes/App.php');
$app = new App($con);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>zoo website</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<meta name="author" content="http://webthemez.com" />
	<!-- css -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
	<link href="css/flexslider.css" rel="stylesheet" /> 
	<link href="css/style.css" rel="stylesheet" />
	

</head>
<body>
	<div id="wrapper" class="home-page">

		<!-- start header -->
		<?php include('includes/header.php');?>
		<!-- end header -->
		<section id="banner">

			<!-- Slider -->
			<div id="main-slider" class="flexslider">
				<ul class="slides">
					<li>
						<img src="img/slides/banner.jpg" alt="" />
						<div class="flex-caption">
							<h3>Adventure Travel</h3> 
							<p>Since we love a great adventure</p> 

						</div>
					</li>
					<li>
						<img src="img/slides/banner2.jpg" alt="" />
						<div class="flex-caption">
							<h3>Enjoy the Tour</h3> 
							<p>Zoos are great monuments, saving animals from dangers and preserving species.</p> 

						</div>
					</li>
					<li>
						<img src="img/slides/lalong.jpg" alt="" width="1280px"; height="550px" />
						<div class="flex-caption">
							<h3>Symbolic feeding of animals</h3> 
							<p>Governor Simon Lalong, Special Guest of Honor at the symbolic Feeding of Animals at the Jos Wildlife Park, following the approval of the Plateau State Tourism Policy.</p> 

						</div>
					</li>
					<li>
						<img src="img/slides/gate01.jpeg" alt="" width="1280px"; height="550px" />
						<div class="flex-caption">
							<h3>Welcome</h3> 
							<p>Jos Wildlife Park is the place to be, wait no longer!</p> 

						</div>
					</li>
					<li>
						<img src="img/slides/people.jpg" alt="" width="1280px"; height="550px" />
						<div class="flex-caption">
							<h3>Don't be left out!</h3> 
							<p>Try to visit the zoo today and have a pleasant experience.</p> 

						</div>
					</li>
				</ul>
			</div>
			<!-- end slider -->

		</section> 
		<section id="call-to-action-2">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-sm-9">
						<h3>Visit a Zoo Today!</h3>
						<p>A visit to a zoo offers us an opportunity to see the wild animals. Zoo is a place where we can see different animals and birds at one place. It has great attraction particularly for the children. A visit to a zoo gives us both information and entertainment. We come to learn about the rare species.</p>
					</div>
					<div class="col-md-2 col-sm-3">
						<a href="ticket.php" class="btn " style="background-color: #008000; margin-top:50px;"><span style="color: #FFFFFF; font-size: 20px;">Book Ticket</span></a>
					</div>
				</div>
			</div>
		</section>

		<section id="content">

			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="aligncenter"><h2 class="aligncenter">Animals Planet</h2></div>
						<br/>
					</div>
				</div>

				<div class="row box-section">
					<?php echo $app->show_animals_index(); ?>
				</div>
			</section>
			<?php include('includes/footer.php');?>
		</div>
		<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>  
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/animate.js"></script>
	<!-- Vendor Scripts -->
	<script src="js/modernizr.custom.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script> 
</body>
</html>