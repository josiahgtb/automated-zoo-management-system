<?php
session_start();
error_reporting(0);


include('includes/config/config.php');
include('includes/classes/Animal.php');
include('includes/classes/App.php');
$app = new App($con);

include('includes/dbconnection.php');
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
	<div id="wrapper">

		<!-- start header -->
		<?php include('includes/header.php');?>
		<!-- end header -->
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="pageTitle" style="color: #FFFFFF;">Animal Details</h2>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<section class="section-padding">
				<div class="container">
					<?php 
					$anid=$_GET['anid'];
					$query=mysqli_query($con,"select * from animal where ID='$anid'");
					while ($row=mysqli_fetch_array($query)) {
						?>
						<div class="row showcase-section">
							<div class="col-md-6 " style="margin-top: 20px;">
								<img src="admin/images/<?php echo $row['AnimalImage'];?>" alt="showcase image" width="400" height="390" class="image-responsive">
							</div>
							<div class="col-md-6">
								<div class="about-text">
									<h3><?php echo $row['AnimalName'];?>(<?php echo $row['Breed'];?>)</h3>
									<P><strong>Animal Category: <?php echo $row['AnimalCategory'];?></strong></P>
									<P><strong>Cage Number: <?php echo $row['CageNumber'];?></strong></P>
									<P><strong>Breed: <?php echo $row['Breed'];?></strong></P> 
									<p><?php echo $row['Description'];?></p>
								</div>
							</div>
						</div>
						<?php 
					}?>
				</div>
		</section>
		&nbsp;
		<section id="call-to-action-2">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-sm-9">
							<h3>Tour makes one modest!</h3>
							<p>The zoo is one of the greatest attractions in a city. It has a huge impact on our culture in the 21st century. It is a longstanding place, that can save the animals from the dangers from the wilderness and extinction, and it can also be a really interesting place, discovering species.</p>
						</div>
						<div class="col-md-2 col-sm-3">
							<a href="ticket.php" class="btn " style="background-color: #008000; margin-top:50px;"><span style="color: #FFFFFF; font-size: 20px;">Book Ticket</span></a>
						</div>
					</div>
				</div>
			</section>
		&nbsp;
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