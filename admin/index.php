<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['login']))
{
  $username=$_POST['username'];
  $password=md5($_POST['password']);
  $sql ="SELECT * FROM admin WHERE UserName=:username and Password=:password";
  $query=$dbh->prepare($sql);
  $query-> bindParam(':username', $username, PDO::PARAM_STR);
  $query-> bindParam(':password', $password, PDO::PARAM_STR);
  $query-> execute();
  $results=$query->fetchAll(PDO::FETCH_OBJ);
  if($query->rowCount() > 0)
  {
    foreach ($results as $result) 
    {
      $_SESSION['odmsaid']=$result->ID;
      $_SESSION['login']=$result->username;
      $_SESSION['names']=$result->FirstName;
      $_SESSION['permission']=$result->AdminName;
      $get=$result->Status;
    }
    $aa= $_SESSION['odmsaid'];
    $sql="SELECT * from admin  where ID=:aa";
    $query = $dbh -> prepare($sql);
    $query->bindParam(':aa',$aa,PDO::PARAM_STR);
    $query->execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    $cnt=1;
    if($query->rowCount() > 0)
    {
      foreach($results as $row)
      {            
        if($row->Status=="1")
        { 
          echo "<script type='text/javascript'> document.location ='dashboard.php'; </script>";              
        } else
        { 
          echo "<script>
          alert('Username or password is not correct!');document.location ='index.php';
          </script>";
        }
      } 
    } 
  } else{
    echo "<script>alert('Invalid Details');</script>";
  }
}
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
  <title>Zoo Management System - Login</title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-login" style="background-image: url(img/images5.jpeg);">
  <!-- Login Content -->
  <div class="container-login">
    <div class="row justify-content-center">
      <div class="col-xl-6 col-lg-12 col-md-9">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4"><img src="img/logo/zoo.png" width="90" height="80"><br><span style="color:#206020;">ADMIN LOGIN</span></h1>
                  </div>
                  <form role="form" id=""  method="post" enctype="multipart/form-data" class="form-horizontal">  
                    <div class="form-group mb-3">
                      <input type="text" class="form-control form-control-lg" name="username" id="exampleInputEmail1" placeholder="Username"   required>
                    </div>
                    <div class="form-group mt-3" >
                      <input type="password"   name="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password"  required>
                    </div>
                    <div class="mt-3">
                      <button name="login" class="btn btn-success btn-block">SIGN IN</button>
                    </div>
                    

                    <hr>
                    
                    <center><a href="../index.php" class="btn btn-primary">BACK HOME</a></center>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Login Content -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="js/ruang-admin.min.js"></script>
</body>

</html>