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
  <title>Manage Normal Ticket </title>
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/ruang-admin.min.css" rel="stylesheet">
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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
            <h1 class="h3 mb-0 text-gray-800">Online Booking Tickets</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Manage Online Tickets</li>
            </ol>
          </div>

          <!-- Row -->
          <div class="row">
            <!-- Datatables -->
            <!-- DataTable with Hover -->
            <div class="col-lg-12">

              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Manage Live Online Tickets</h6>
                  
                </div>
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                    <thead class="thead-light">
                      <tr>
                        <th>NO</th>
                        <th>Ticket ID</th>
                        <th>Tourist Names</th>
                        <th>Generating Ticket Date</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $sql = "SELECT  * from billing where Status='Used' order by ID desc";
                      $query = $dbh -> prepare($sql);
                      $query->execute();
                      $results=$query->fetchAll(PDO::FETCH_OBJ);
                      $cnt=1;
                      if($query->rowCount() > 0)
                      {
                        foreach($results as $result)
                          {       ?>    
                            <tr>
                              <td><?php echo $cnt;?></td>
                              <td><?php echo htmlentities($result->TicketID);?></td>
                              <td><?php echo htmlentities($result->FirstName);?>&nbsp;<?php echo htmlentities($result->LastName);?></td>
                              <td><?php  echo htmlentities(date("d-m-Y", strtotime($result->CreationDate)));?></td>
                              <td>

                                <a href="#"   class=" edit_data3" id="<?php echo  ($result->ID); ?>"   title="click to Update"><button type="button" class="btn btn-sm btn-success">View</button></a></td>
                              </tr>
                              <?php $cnt=$cnt+1;
                            } 
                          }?>
                        </tbody>
                      </table>
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

      <!--  start  modal -->
      <div id="editData3" class="modal fade">
        <div class="modal-dialog modal-md">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">View Ticket details</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" id="info_update3">
              <?php @include("view_used_ticket.php");?>
            </div>
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
      </div>
      <!--   end modal -->
      <!-- Scroll to top -->
      <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
      </a>

      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
      <script src="js/ruang-admin.min.js"></script>
      <!-- Page level plugins -->
      <script src="vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

      <!-- Page level custom scripts -->
      <script>
        $(document).ready(function () {
      $('#dataTable').DataTable(); // ID From dataTable 
      $('#dataTableHover').DataTable(); // ID From dataTable with Hover
    });
  </script>
  
  <script type="text/javascript">
    $(document).ready(function(){
      $(document).on('click','.edit_data3',function(){
        var edit_id3=$(this).attr('id');
        $.ajax({
          url:"view_used_ticket.php",
          type:"post",
          data:{edit_id3:edit_id3},
          success:function(data){
            $("#info_update3").html(data);
            $("#editData3").modal('show');
          }
        });
      });
    });
  </script>
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