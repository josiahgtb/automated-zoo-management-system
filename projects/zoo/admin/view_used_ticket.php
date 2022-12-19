<?php 
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit']))
{  
  $eib= $_SESSION['editbid'];
  $ticket=$_POST['ticket'];
  $sql4="update billing set Status=:ticket where ID=:eib";
  $query=$dbh->prepare($sql4);
  $query->bindParam(':ticket',$ticket,PDO::PARAM_STR);
  $query->bindParam(':eib',$eib,PDO::PARAM_STR);
  $query->execute();
  if ($query->execute())
  {
    echo '<script>alert("Ticket detail has been Updated.")</script>';
  }else{
    echo '<script>alert("update failed! try again later")</script>';
  }
}
?>

<form role="form" id=" " method="post" enctype="multipart/form-data">
  <div class="card-body">
    <?php
    $eid=$_POST['edit_id3'];
    $sql2="SELECT * from billing where ID=:eid";
    $query2 = $dbh -> prepare($sql2);
    $query2-> bindParam(':eid', $eid, PDO::PARAM_STR);
    $query2->execute();
    $results=$query2->fetchAll(PDO::FETCH_OBJ);
    if($query2->rowCount() > 0)
    {
      foreach($results as $row)
      {
        $_SESSION['editbid']=$row->ID;
        ?>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>Tourist Names</label>
              <input class="form-control" type="text" name="names" value="<?php  echo $row->FirstName;?>&nbsp; <?php  echo $row->LastName;?>"   readonly>
            </div>        
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label>Ticket ID</label>
              <input class="form-control" type="text" name="names" value="<?php  echo $row->TicketID;?>"   readonly>
            </div>        
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>Phone Number</label>
              <input class="form-control" type="text" name="ticket" value="0<?php  echo $row->Phone;?>" readonly>
            </div>        
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label>Email</label>
              <input class="form-control" type="text" name="ticket" value="<?php  echo $row->Email;?>" readonly>
            </div>        
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label>State</label>
              <input class="form-control" type="text" name="ticket" value="<?php  echo $row->State;?>" readonly>
            </div>        
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label>City</label>
              <input class="form-control" type="text" name="ticket" value="<?php  echo $row->City;?>" readonly>
            </div>        
          </div>
        </div>
        <?php 
      }
    } ?>
  </div>
</form>