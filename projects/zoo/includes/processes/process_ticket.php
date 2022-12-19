<?php
include('../config/config.php');

if(isset($_POST['submit']))
{
	$animalcategory=$_POST['animalcategory'];
	if ($animalcategory=='Citizen') {

		$sql="SELECT * FROM ticket_type WHERE TicketType='Citizen Adult'";
		$query = mysqli_query($con, $sql);
        $result = mysqli_fetch_array($query);
        $adultprice = $result['Price'];

        $sql="SELECT * FROM ticket_type WHERE TicketType='Citizen Child'";
		$query = mysqli_query($con, $sql);
        $result = mysqli_fetch_array($query);
        $childrenprice = $result['Price'];

		$adult=$_POST['adult'];
		$children=$_POST['children'];

		$aprice=$adultprice;
		$cprice=$childrenprice;
		$ticketid=mt_rand(100000000, 999999999);
		$_SESSION['ticket']=$ticketid;
		$_SESSION['tickettype']='citizen';

        $sql = "INSERT INTO citizen (TicketID,NoAdult,NoChildren,AdultUnitprice,ChildUnitprice) VALUES ('$ticketid', '$adult', '$children', '$aprice', '$cprice')";
        $query = mysqli_query($con, $sql);
        if($query){
            header("Location: ../../checkout.php");
        }
        else
        {
            header("Location: ticket.php");
        }
	}

	$animalcategory2=$_POST['animalcategory'];
	if ($animalcategory2=='Foreigner') {
        $sql="SELECT * FROM ticket_type WHERE TicketType='Foreigner Adult'";
		$query = mysqli_query($con, $sql);
        $result = mysqli_fetch_array($query);
        $adultprice = $result['Price'];

        $sql="SELECT * FROM ticket_type WHERE TicketType='Foreigner Child'";
		$query = mysqli_query($con, $sql);
        $result = mysqli_fetch_array($query);
        $childrenprice = $result['Price'];
 
		$adult=$_POST['adult'];
		$children=$_POST['children'];
		$aprice=$adultprice;
		$cprice=$childrenprice;
		$ticketid=mt_rand(100000000, 999999999);
		$_SESSION['ticket']=$ticketid;
		$_SESSION['tickettype']='foreigner';

        $sql = "INSERT INTO foreigner (TicketID,NoAdult,NoChildren,AdultUnitprice,ChildUnitprice) VALUES ('$ticketid', '$adult', '$children', '$aprice', '$cprice')";
        $query = mysqli_query($con, $sql);
        if($query){
            header("Location: ../../checkout.php");
        }
        else
        {
            header("Location: ticket.php");
        }

	}

}

?>