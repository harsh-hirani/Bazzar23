<?php

include 'conn.php';
$stock = $_POST['stockId'];
$opcode = $_POST['operationcode'];
header('Content-Type:application/json');



$status = 'false';

if($opcode == 5 || $opcode == '5'){
    $status = 'true';
    $load = array() ;
    $sql0 = "SELECT sum(quantity) as total FROM ".$username."_portfolio WHERE stockId = '".$stock."' and fixed = '0' ";
    $sql2 = "SELECT sum(quantity) as total FROM ".$username."_portfolio WHERE stockId = '".$stock."' and fixed = '2' ";
    $d1 = mysqli_query($conn,$sql0);
    $d2 = mysqli_query($conn,$sql2);

    $dump = mysqli_fetch_assoc($d1);
    $dump2 = mysqli_fetch_assoc($d2);
    $load['allowed0'] = (int)$dump['total'];
    $load['allowed2'] = (int)$dump2['total'];
    $load['stockId'] = (int)$stock;
    $load['name'] = $stockarray[$stock];
    $load['price'] = getValue($stock,$stockarray,$conn);

echo json_encode(["status" => $status,"code"=>$opcode, "data" => $load]);
}else{
    $SQL = "SELECT sum(quantity) as total FROM ".$username."_portfolio WHERE stockId = '".$stock."' and fixed = $opcode ";
    $data = mysqli_query($conn,$SQL);
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
}
?>