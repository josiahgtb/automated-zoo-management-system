<?php
include('../config/config.php');

if(isset($_GET["transaction_id"]) AND isset($_GET["status"]) AND isset($_GET["tx_ref"]) ){

	$trans_id = htmlspecialchars($_GET["transaction_id"]);
	$trans_status = htmlspecialchars($_GET["status"]);
	$trans_ref = htmlspecialchars($_GET["tx_ref"]);

	//Verify endpoint 
	$url = "https://api.flutterwave.com/v3/transactions/".$trans_id."/verify";

	//Create cURL session
	$curl = curl_init($url);


	//Turn off the SSl checker
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);

	//Decide the request that you want
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

	curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "GET");

	//Set the API headers 
	curl_setopt($curl, CURLOPT_HTTPHEADER, [
		"Authorization: Bearer FLWSECK_TEST-0b61a1c8eb47bc13fe2859784edf1417-X",
		"Content-Type: Application/json"
	]);

	//Run cURl

	$run = curl_exec($curl);

	//Check for errors
	$error = curl_error($curl);

	if($error){
		die("the curl has returned some errors: ". $error);
	}

	//echo "<pre>".$run."</pre>";


	//convert to json obj

	$result = json_decode($run);

	//print_r($result);
	//exit("");

	$status = $result->data->status;
	$message = $result->message;
	$id = $result->data->id;
	$reference = $result->data->tx_ref;
	$amount = $result->data->amount;
	$charged_amount = $result->data->charged_amount;
	$fullname = $result->data->customer->name;
	$email = $result->data->customer->email;
	$phone = $result->data->customer->phone_number;
	$description = $result->data->meta->reason;

	if(($status != $trans_status) OR ($trans_id != $id)){
		header("Location: http://localhost/projects/zoo/index.php");
	}else{
		$tick_id = $_SESSION['ticket'];
		$firstname = $_SESSION['firstname'];
		$lastname = $_SESSION['lastname'];
		$number = $_SESSION['number'];
		$email = $_SESSION['email'];
		$state = $_SESSION['state'];
		$city = $_SESSION['city'];
		$sql = "INSERT INTO billing (TicketID,FirstName,LastName,Phone,Email,State,City) VALUES ('$tick_id','$firstname','$lastname','$number','$email','$state','$city')";
		$query = mysqli_query($con, $sql);
		if($query){
			header("Location: http://localhost/projects/zoo/ticketslip.php");
		}
	}

	curl_close($curl);
}else{
	header("Location: http://localhost/projects/zoo/index.php");
}

?>