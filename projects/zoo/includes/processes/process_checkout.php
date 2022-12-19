<?php
include('../config/config.php');

$tid=$_SESSION['ticket'];
$type=$_SESSION['tickettype'];
$total = 0;

if($type=='foreigner'){
	$sql = "SELECT * FROM foreigner WHERE TicketID = $tid";
	$query = mysqli_query($con, $sql);
	$row = mysqli_fetch_array($query);
	$num_adult = $row['NoAdult'];
	$adult_unit = $row['AdultUnitprice'];
	$ta = $num_adult * $adult_unit;
	$num_child = $row['NoChildren'];
	$child_unit = $row['ChildUnitprice'];
	$tc = $num_child * $child_unit;
	$total = $tc + $ta;
}
else{
	$sql = "SELECT * FROM citizen WHERE TicketID = $tid";
	$query = mysqli_query($con, $sql);
	$row = mysqli_fetch_array($query);
	$num_adult = $row['NoAdult'];
	$adult_unit = $row['AdultUnitprice'];
	$ta = $num_adult * $adult_unit;
	$num_child = $row['NoChildren'];
	$child_unit = $row['ChildUnitprice'];
	$tc = $num_child * $child_unit;
	$total = $tc + $ta;
}


if(isset($_POST['submit']))
{
	$firstname=$_POST['firstname'];
	$lastname=$_POST['lastname'];
	$number=$_POST['number'];
	$email=$_POST['email'];
	$state=$_POST['state'];
	$city=$_POST['city'];

	//set the needed data to sessions
	$_SESSION['firstname'] = $firstname;
	$_SESSION['lastname'] = $lastname;
	$_SESSION['number'] = $number;
	$_SESSION['email'] = $email;
	$_SESSION['state'] = $state;
	$_SESSION['city'] = $city;

	// making the payment using flutter wave gateway
	//integrate rave payment
	$endpoint = "https://api.flutterwave.com/v3/payments";


	//required data
	$postdata = array(

		"tx_ref"   => uniqid()."1".date("YmdHis"),
		"currency" => "NGN",
		"amount"   => $total,

		"customer" =>array(
			"name"  => $firstname." ".$lastname,
			"email" => $email,
			"phone_number" => $number
		),

		"customizations" =>array(
			"title"  => "Zoo Ticket payment",
			"description" => 'Zoo payment'
		),

		"meta" =>array(
			"reason"  => 'Zoo payment',
			"address" => $city
		),

		"redirect_url" => "http://localhost/projects/zoo/includes/processes/verifypayment.php"
	);

	//Init cURL handler
	$ch = curl_init();

	//Turn of the ssl checking
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

	//set the endpoint
	curl_setopt($ch, CURLOPT_URL, $endpoint);

	//Turn on the cURL post method
	curl_setopt($ch, CURLOPT_POST, 1);

	//Encode the post field
	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($postdata));

	//Make it return data
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

	//Set the waiting timeout
	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 9000);
	curl_setopt($ch, CURLOPT_TIMEOUT, 9000);

	//set the headers from endpoint
	curl_setopt($ch, CURLOPT_HTTPHEADER, array(
		"Authorization: Bearer FLWSECK_TEST-0b61a1c8eb47bc13fe2859784edf1417-X",
		"Content-Type: Application/json",
		"Cache-Control: no-cache"
	));

	//Execute the cURL session
	$request = curl_exec($ch);

	$result = json_decode($request);

	//var_dump($result);

	//redirect to the payment page
	header("Location: ".$result->data->link);

	//close the cURL session
	curl_close($ch);

}

?>