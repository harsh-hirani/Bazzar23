<?php
try{
include 'conn.php';
header('Content-Type: application/json');


$sql = "SELECT * from `user_current_sts` where id=$id";
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$sql));
$balance = $ttmmpp['balance'];
$load = array();
$load['balance'] = (float)$balance;
$load['tax']= (float)$ttmmpp['tax'];
$load['freezed']=(float)$ttmmpp['freez'];
$sql = "SELECT SUM(pal) as pal from `".$username."_portfolio` where fixed='1' or fixed='3'";
$SQL2 = "SELECT invest as investment from `user_current_sts` where id=$id";
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$SQL2));
$load['investment'] = (float)$ttmmpp['investment'];
$ttmmpp = mysqli_fetch_assoc(mysqli_query($conn,$sql));
$load['pal'] = (float)$ttmmpp['pal'];
echo json_encode(["status" => 'true', "data" => $load]);
}catch(Exception $e){
    echo "error - ".$stockarray[$i]." 3<br>";
    echo $e->getMessage()."<br>";
}
?>