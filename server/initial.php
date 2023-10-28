<?php
include 'conn.php';
header('Content-Type: application/json');

$sql = "SELECT * from `user_current_sts` where id=$id";
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$sql));
$balance = $ttmmpp['balance'];
$load = array();
$load['balance'] = (float)$balance;
$load['tax']= (float)$ttmmpp['tax'];
$sql = "SELECT SUM(pal) as pal from `".$username."_portfolio`";
$SQL2 = "SELECT SUM(quantity*value) as investment from `".$username."_portfolio` WHERE fixed='0' or fixed='2'";
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$SQL2));
$load['investment'] = (float)$ttmmpp['investment'];
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$sql));
$load['pal'] = (float)$ttmmpp['pal'];
echo json_encode(["status" => 'true', "data" => $load]);
?>