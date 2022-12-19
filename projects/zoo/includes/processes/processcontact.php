<?php
require('../config/config.php');

if(isset($_POST['email'])&&isset($_POST['name'])&&isset($_POST['message'])){
    
    $email = $_POST['email'];
    $name = $_POST['name'];
    $message = $_POST['message'];

    $email = strip_tags($email);
    $message = strip_tags($message);
    $name = strip_tags($name);

    if(empty($email)||empty($message)||empty($name)){
        echo "Please Fill All Fields";
        exit;
    }else{
        $sql = "INSERT INTO about (full_name, email, message) VALUES ('$name', '$email', '$message')";
        $query = mysqli_query($con, $sql);

        if($query){
            echo "Submitted Successfully";
        }
        else{
            echo "Submission Failed";
        }
    }

}else{
    echo "There is a problem submitting this form";
    exit;
}

?>