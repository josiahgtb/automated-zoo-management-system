<?php
include('includes/config/config.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>zoo website - services</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<meta name="author" content="http://webthemez.com" />

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
					<div class="col-lg-12" style="height: 8px;">
						<h2 class="pageTitle" style="color: #ffffff;">Animals</h2>
					</div>
				</div>
			</div>
		</section>
		<section id="content">

			<div class="container">
				<div class="row">
					<div class="col-md-12">
						
						<br/>

						<?php 
			if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        // Formula for pagination
        $no_of_records_per_page = 4;
        $offset = ($pageno-1) * $no_of_records_per_page;
        $total_pages_sql = "SELECT COUNT(*) FROM animal";
$ret1=mysqli_query($con,"select COUNT(*) from  animal");
$total_rows = mysqli_fetch_array($ret1)[0];
$total_pages = ceil($total_rows / $no_of_records_per_page);
 $query=mysqli_query($con,"select * from animal LIMIT $offset, $no_of_records_per_page");
 while ($row=mysqli_fetch_array($query)) {
 ?>
								<div class="col-md-3 col-sm-6 welcome-grid" >
									<img src="admin/images/<?php echo $row['AnimalImage'];?>" width='220' height='200' alt=" " class="img-responsive" />
									<div class="wel-info">
										<h4><a href="details.php?anid=<?php echo $row['ID'];?>"><?php echo $row['AnimalName'];?>&nbsp;(<?php echo $row['Breed'];?>)</a></h4>
										
									</div>
								<br></div><?php }?>
				
				<div class="clearfix"> </div>
			</div>
	<div align="center">
    <ul class="pagination" >
        <li><a href="?pageno=1"><strong>First</strong></a></li>
        <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">
            <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>"><strong style="padding-left: 10px">Prev</strong></a>
        </li>
        <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
            <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>"><strong style="padding-left: 10px">Next</strong></a>
        </li>
        <li><a href="?pageno=<?php echo $total_pages; ?>"><strong style="padding-left: 10px">Last</strong></a></li>
    </ul>
					</div>
				</div>

				
			</section>
			<section id="call-to-action-2">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-sm-9">
							<h3>Visit a Zoo Today!</h3>
							<p>A visit to a zoo offers us an opportunity to see the wild animals.Zoo is a place where we can see different animals and birds at one place. It has great attraction particularly for the children. A visit to a zoo gives us both information and entertainment. We come to learn about the rare species.</p>
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
	<script>
		document.getElementByID("animals").innerHTML = "hello";
	</script>
</body>
</html>