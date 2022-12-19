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
					<div class="">
						<span > <h1 style="color: #ffff; font-size: 25px;margin-top: -10px;">Search Result of keyword "<?php echo $_POST['searchdata'];?>"</h1>
						</span><br>
					</div> 
				</div>
			</div>
		</section>
		<section id="content">
			<section class="section-padding">
				<div class="container" >
					<?php 
					$anid=$_POST['searchdata'];
					$query=mysqli_query($con,"select * from animal where AnimalName like '$anid' and Status='Live'");
					$num=mysqli_num_rows($query);
					if($num>0)
					{
						while ($row=mysqli_fetch_array($query)) {
							?>

							<div class="row showcase-section">
								<div class="col-md-6" style="margin-top: 20px;">
									<img src="admin/images/<?php echo $row['AnimalImage'];?>" alt="showcase image">
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
						}
					}else{?> 

						<p><span><h2>No Result found against Search!</h2></span></p>
						<?php
					}
					?>
				</div>
			</section>
			&nbsp;
			<section id="call-to-action-2">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-sm-9">
						<h3>Visit a Zoo Today!</h3>
						<p>A visit to a zoo offers us an opportunity to see the wild animals.Zoo is a place where we can see different animals and birds at one place. It has great attraction particularly for the children. A visit to a zoo gives us both information and entertainment. We come to learn about the rare species.</p>
					</div>
					<div class="col-md-2 col-sm-3">
						<a href="ticket.php" class="btn " style="background-color: #008000;"><span style="color: #FFFFFF; font-size: 20px;">Book Ticket</span></a>
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