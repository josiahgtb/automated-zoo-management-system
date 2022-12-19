<?php
include('includes/config/config.php');
include('includes/classes/Ticket.php');
$app = new Ticket($con);
$app->set_tickettype();
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
						<h2 class="pageTitle" style="color: #FFFFFF;">Book Ticket</h2>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container" >
				<div class="col-md-6"  >
					<img src="images/bookticket.jpg" alt="image" width="550px;" height="300px;">
				</div>
				<div class="col-md-3" style="background-color: #E5E4E2;" >
					<form method="post" action="includes/processes/process_ticket.php">
						<div class="row">
							<div class="form-group col-md-12">
								<label class="col-sm-12 pl-0 pr-0">Ticket Type</label>
								<div class="col-sm-12 pl-0 pr-0" >
									<select class="form-control"   name="animalcategory"  id="animalcategory"  required>
										<option value="">Select ticket type</option>
										<option value="Citizen">Citizen</option>
										<option value="Foreigner">Foreigner</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12 ">
								<label class="col-sm-12 pl-0 pr-0">No. of Adult</label>
								<div class="col-sm-12 pl-0 pr-0">
									<input type="number" class="form-control" name="adult" id="adult" placeholder=" Adult" required>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12 ">
								<label class="col-sm-12 pl-0 pr-0">No. of Children</label>
								<div class="col-sm-12 pl-0 pr-0">
									<input type="number" class="form-control" name="children" id="children" placeholder=" Children" required>
								</div>
							</div>
						</div>
						<div class="form-group col-md-12">
							<button type="submit" name="submit" class="btn-primary btn" style="color: #FFFFFF;">Book Now</button>
						</div>

					</form>
				</div>
				<div class="col-md-3" >
					<h4>Citizen Ticket Price</h4>
					<div class="row" style="margin-bottom: 1px;">
						<div class="form-group col-md-12 ">
							<label class="col-sm-12 pl-0 pr-0">Adult: &nbsp;&#8358;<?php echo $app->citizen_adult;?></label>
						</div>
					</div>

					<div class="row"style="margin-bottom: 1px;">
						<div class="form-group col-md-12 ">
							<label class="col-sm-12 pl-0 pr-0">Child: &nbsp;&#8358;<?php echo $app->citizen_child;?></label>
						</div>
					</div>
					<hr>
					<h4>Foreigner Ticket Price</h4>
					<div class="row"style="margin-bottom: 1px;">
						<div class="form-group col-md-12 ">
							<label class="col-sm-12 pl-0 pr-0">Adult: &nbsp;&#8358;<?php echo $app->foreign_adult;?></label>
						</div>
					</div>
					
					<div class="row"style="margin-bottom: 1px;">
						<div class="form-group col-md-12 ">
							<label class="col-sm-12 pl-0 pr-0">Child: &nbsp;&#8358;<?php echo $app->foreign_child;?></label>
						</div>
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