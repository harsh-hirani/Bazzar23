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
$sql = "With cte as( SELECT id,(balance+invest) as `param`, RANK() OVER (ORDER BY param DESC) ranking FROM `user_current_sts`) select * from cte";
// $sql = "SELECT id,balance,(balance+invest) as `param` FROM `user_current_sts` ORDER BY `param` DESC";
$res = mysqli_query($conn,$sql);
$load = array();
$rows = mysqli_num_rows($res);
for($i=0;$i<$rows;$i++) {
    $row = mysqli_fetch_assoc($res);
    $load[] = array(
        "id" => $row['id'],
        "rank" => $row['ranking'],
        "name" => getName($row['id'],$conn),
        "balance" => $row['param'],
    );
}
    echo json_encode(["status" => $status, "data" => $load]);


    // echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);

?>