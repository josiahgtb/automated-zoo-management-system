<?php
include('includes/config/config.php');
include('includes/classes/Ticket.php');
$app = new Ticket($con);
$eid=$_SESSION['ticket'];
$type=$_SESSION['tickettype'];
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
						<h2 class="pageTitle" style="color: #FFFFFF;">pay for tickets</h2>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<section class="section-padding ">
				<div class="container" style="background-color: #E5E4E2;">
					<div class="col-md-6">

						<div class="card-body" >
							<h4 style="color: blue;">Ticket Information</h4>
							<table border="1" class="table table-striped table-bordered first" >
								<tr>
									<th></th>
									<th>No. of Tickets</th>
									<th>Price per unit</th>
									<th>Total</th>
								</tr>
								<?php
									if($type=='foreigner'){
										echo $app->calc_foreign_amount($eid);
									}
									else{
										echo $app->calc_citizen_amount($eid);
									}
								?>
							</table>
						</div>
						<div class="" >
							<img src="images/paypal.jpg" alt="image" width="380px;" height="80px;">
						</div>
					</div>
					<div class="col-md-6" style="background-color: #FFFFFF;" >
						<h3 style="color: #00FF00;">Enter Billing Address</h3>
						<form method="post" action="includes/processes/process_checkout.php">
							<div class="row">
								<div class="form-group col-md-6 ">
									<label class="col-sm-12 pl-0 pr-0">First Name</label>
									<div class="col-sm-12 pl-0 pr-0">
										<input type="text" class="form-control" name="firstname" id="firstname" placeholder=" First Name" required>
									</div>
								</div>
								<div class="form-group col-md-6 ">
									<label class="col-sm-12 pl-0 pr-0">Last Name</label>
									<div class="col-sm-12 pl-0 pr-0">
										<input type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name " required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-6 ">
									<label class="col-sm-12 pl-0 pr-0">Contact Number</label>
									<div class="col-sm-12 pl-0 pr-0">
										<input type="number" class="form-control" name="number" id="number" placeholder="Phone " required>
									</div>
								</div>
								<div class="form-group col-md-6 ">
									<label class="col-sm-12 pl-0 pr-0">Email Address</label>
									<div class="col-sm-12 pl-0 pr-0">
										<input type="text" class="form-control" name="email" id="email" placeholder=" Email" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-6 ">
									<label class="col-sm-12 pl-0 pr-0">Billing State</label>
									<div class="col-sm-12 pl-0 pr-0">
										<input type="text" class="form-control" name="state" id="state" placeholder=" State" required>
									</div>
								</div>
								<div class="form-group col-md-6 ">
									<label class="col-sm-12 pl-0 pr-0">Billing City</label>
									<div class="col-sm-12 pl-0 pr-0">
										<input type="text" class="form-control" name="city" id="city" placeholder=" City" required>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<button type="submit" name="submit" class="btn-primary btn btn-sm" style="color: #FFFFFF;">Pay Now</button>
							</div>

						</form>
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