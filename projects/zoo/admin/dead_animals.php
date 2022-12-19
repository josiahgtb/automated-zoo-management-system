<?php
include('includes/checklogin.php');
check_login();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/logo.png" rel="icon">
  <title>Admin - Dead Animal</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
</head>
<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
    <?php include('includes/sidebar.php');?>
    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        <!-- TopBar -->
        <?php include('includes/header.php');?>
        <!-- Topbar -->

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Animals</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Dead Animal Details</li>
            </ol>
          </div>

          <div class="row">
            <div class="col-lg-12">
              <!-- Form Basic -->
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Dead Animals</h6>
                </div>
                <div class="card-body">
                  <?php 
                  $aid=intval($_GET['pid']);
                  $sql = "SELECT * from animal where ID=:aid";
                  $query = $dbh -> prepare($sql);
                  $query -> bindParam(':aid', $aid, PDO::PARAM_STR);
                  $query->execute();
                  $results=$query->fetchAll(PDO::FETCH_OBJ);
                  $cnt=1;
                  if($query->rowCount() > 0)
                  {
                    foreach($results as $result)
                    { 
                      ?>
                      <form class="form-horizontal" name="package" method="post" enctype="multipart/form-data">
                        <div class="row">
                          <div class="form-group col-md-4">
                            <label for="focusedinput" class=" control-label">Animal Name</label>
                            <div class="">
                              <input type="text" class="form-control" name="animalname" id="animalname" placeholder="Create Package" value="<?php echo htmlentities($result->AnimalName);?>" required>
                            </div>
                          </div>
                          <div class="form-group col-md-4">
                            <label for="focusedinput" class=" control-label">Animal Category</label>
                            <div class="">
                               <input type="text" class="form-control" name="animalcategory" id="animalcategory"  value="<?php echo htmlentities($result->AnimalCategory);?>" readonly>
                            </div>
                          </div>
                          <div class="form-group col-md-4">
                            <label for="focusedinput" class=" control-label">Animal status</label>
                            <div class="">
                             <input type="text" class="form-control" name="status" id="status"  value="<?php echo htmlentities($result->Status);?>" readonly>
                           </div>
                         </div>
                      </div>
                      <div class="row">
                        <div class="form-group col-md-6">
                          <label for="focusedinput" class=" control-label">Breed</label>
                          <div class="">
                            <input type="text" class="form-control" name="breed" id="breed"  value="<?php echo htmlentities($result->Breed);?>" readonly>
                          </div>
                        </div>
                        <div class="form-group col-md-6">
                          <label for="focusedinput" class=" control-label">Died On</label>
                          <div class="">
                            <input type="text" class="form-control" name="breed" id="breed"  value="<?php echo htmlentities($result->LastUpdate);?>" readonly>
                          </div>
                        </div>
                        
                      </div>

                      <div class="row">
                        <div class="form-group col-md-6">
                          <label for="focusedinput" class=" control-label">Animal Details</label>
                          <div class="">
                            <textarea class="form-control" rows="5" cols="50" name="animaldetails" id="animaldetails" placeholder="Package Details" required><?php echo htmlentities($result->Description);?></textarea> 
                          </div>
                        </div>                              
                        <div class="form-group col-md-6">
                          <label for="focusedinput" class=" control-label">Animal Image</label>
                          <div class="">
                            <img src="images/<?php echo htmlentities($result->AnimalImage);?>" width="200">
                          </div>
                        </div>
                      </div> 
                    </form>
                    <?php 
                  }
                } ?>
              </div>
            </div>

          </div>
        </div>
        <!--Row-->

        <!-- Modal Logout -->
        <?php include('includes/modal.php');?>

      </div>
      <!---Container Fluid-->
    </div>
    <!-- Footer -->
    <?php include('includes/footer.php');?>
    <!-- Footer -->
  </div>
</div>

<!-- Scroll to top -->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="js/ruang-admin.min.js"></script>

</body>

</html>