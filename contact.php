<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Zoo website- contact us</title>
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
						<h2 class="pageTitle" style="color: #FFFFFF;">Contact Us</h2>
					</div>
				</div>
			</div>
		</section>
		<section id="content">

			<div class="container">
				<div class="row"> 
					<div class="col-md-12">
						<div class="about-logo">
							<h3>Contact Us</h3>
							<p>Feel free to contact us today by sending us a message today. Your details will be kept confidential.</p>
						</div>  
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<p>Express your opinion by filling the form below. Your constructive criticism of our services will enable us to serve you better.</p>

						<!-- Form itself -->
						<form id="form">
							<h3>Let us know</h3>
							<div class="control-group" style="margin-top: 15px;">
								<div class="controls">
									<input type="text" class="form-control" 
									placeholder="Full Name" id="name" required
									/>
									<p class="help-block"></p>
								</div>
							</div> 	
							<div class="control-group" style="margin-top: 15px;">
								<div class="controls">
									<input type="email" class="form-control" placeholder="Email" 
									id="email" required
									 />
								</div>
							</div> 	

							<div class="control-group" style="margin-top: 15px;">
								<div class="controls">
									<textarea rows="10" cols="100" class="form-control" 
									placeholder="Message" id="message" required
									 style="resize:none"></textarea>
								</div>
							</div> 		 
							<div id="success"> </div> <!-- For success/fail messages -->
							<button type="submit" class="btn btn-primary pull-right " id="submit" style="margin-top: 15px;">Send</button><br />
						</form>
					</div>
				</div>
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
	<script>
		$('#form').submit(function(e){
                e.preventDefault();

                var name = $('#name').val();
                var email = $('#email').val();
                var message = $('#message').val();

             $.ajax({
                url: 'includes/processes/processcontact.php',
                type: 'post',
                data: {'email':email, 'name':name, 'message':message},
                beforeSend: function(){
                    $('#submit').attr('disabled','true');
                    $("#name").val("");
                    $("#email").val("");
                    $("#message").val("");
                },
                success: function(response){
                    $('#submit').removeAttr('disabled');

                    if(response == 'Submitted Successfully'){
                        alert("Your message has been sent successfully");
                    }
                    else{
                        alert("Message failed to send");
                    }
                }
             });
                
             });
	</script>
</body>
</html>