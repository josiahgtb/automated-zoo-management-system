<?php
include('includes/config/config.php');
include('includes/classes/Animal.php');
include('includes/classes/Ticket.php');
$app = new Ticket($con);

$app->calc_foreign_amount(642790660);
?>