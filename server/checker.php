<?php

include 'conn.php';
$stock = $_POST['stockId'];
$opcode = $_POST['operationcode'];
header('Content-Type:application/json');

$SQL = "SELECT sum(quantity) as total FROM ".$username."_portfolio WHERE stockId = '".$stock."' and fixed = $opcode ";


$data = mysqli_query($conn,$SQL);
$status = 'false';
if ($data) {
    $status = 'true';
    $load = array() ;
    
        $dump = mysqli_fetch_assoc($data);
        
        $load['allowed'] = (int)$dump['total'];
        $load['stockId'] = (int)$stock;
        $load['name'] = $stockarray[$stock];
        $load['price'] = getValue($stock,$stockarray,$conn);
    
    echo json_encode(["status" => $status,"code"=>$opcode, "data" => $load]);

}else{  
    echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
}
?>