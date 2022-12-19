<?php
include('includes/config/config.php');
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
	<div id="wrapper">

		<!-- start header -->
		<?php include('includes/header.php');?>
		<!-- end header -->
		<section id="content">
			<section class="section-padding ">
				<div class="container" style="background-color: #E5E4E2;">
					<div class="col-md-12" id="exampl">

						<div class="card-body" >
							<h4 style="color: blue;" class="text-center">Ticket Payment Slip</h4>
							<table border="1" class="table table-striped table-bordered first" >
								<?php 
								if($_SESSION['tickettype'] == 'foreigner'){
									echo $app->print_ticket_slip_foreign($_SESSION['ticket']);
								}
								else{
									echo $app->print_ticket_slip_citizen($_SESSION['ticket']);
								}
								?>
							</table>
						</div>
						<div class="card-footer">
							<center><button OnClick="CallPrint(this.value)" class="btn btn-primary">Print</button></center>
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
   	<script>
   		function CallPrint(strid) {
          var prtContent = document.getElementById("exampl");
          var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
          WinPrint.document.write(prtContent.innerHTML);
          WinPrint.document.close();
          WinPrint.focus();
          WinPrint.print();
          WinPrint.close();
          }
   	</script>
   </body>
   </html>