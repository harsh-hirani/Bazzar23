<?php

include 'conn.php';
header('Content-Type:application/json');
$status = 'true';   
function getName($id,$c){
    $livesql = "SELECT * FROM `users` WHERE id = $id";
    $res = $c->query($livesql);
    $tmp = mysqli_fetch_assoc($res);
    $value = $tmp? $tmp['fname']." ".$tmp['lname'] : "User Not Found";
    return $value;
}

$sql = "SELECT * FROM `user_current_sts` ORDER BY `balance` DESC limit 10";
foreach ($conn->query($sql) as $row) {
    $load[] = array(
        "name" => getName($row['id'],$conn),
        "balance" => $row['balance'],
    );
}
    echo json_encode(["status" => $status, "data" => $load]);


    // echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);

?>