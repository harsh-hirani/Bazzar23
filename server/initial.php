<?php
include 'conn.php';
header('Content-Type: application/json');

$sql = "SELECT * from `user_current_sts` where id=$id";
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$sql));
$balance = $ttmmpp['balance'];
$load = array();
$load['balance'] = (float)$balance;
$load['tax']= (float)$ttmmpp['tax'];
$sql = "SELECT SUM(quantity*value) as investment,SUM(pal) as pal from `".$username."_portfolio`";
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$sql));
$load['invenstment'] = (float)$ttmmpp['investment'];
$load['pal'] = (float)$ttmmpp['pal'];
echo json_encode(["status" => 'true', "data" => $load]);
?>