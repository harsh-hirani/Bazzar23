<?php
$user = 'name';
$stock = $_POST['stockId'];
header('Content-Type:application/json');

$SQL = "SELECT sum(quantity) as total FROM ".$user."_portfolio WHERE stockId = '".$stock."' and fixed = 0";

include 'conn.php';

$data = mysqli_query($conn,$SQL);
$status = 'false';
if ($data) {
    $status = 'true';
    $load = array() ;
    
        $dump = mysqli_fetch_assoc($data);
        
        $load['allowed'] = (int)$dump['total'];
        $load['stock'] = (int)$stock;
        $load['price'] = 50;
    
    echo json_encode(["status" => $status, "data" => $load]);

}else{  
    echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
}
?>