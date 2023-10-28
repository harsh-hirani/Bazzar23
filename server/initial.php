<?php
include 'conn.php';
header('Content-Type: application/json');

$sql = "SELECT balance from `user_current_sts` where id=$id";
$balance = mysqli_fetch_assoc(mysqli_query($conn,$sql))['balance'];
$load = array();
$load['balance'] = (float)$balance;
echo json_encode(["status" => 'true', "data" => $load]);
?>