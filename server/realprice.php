<?php

include 'conn.php';
header('Content-Type:application/json');



function getvalueo($name,$c){
    $livesql = "SELECT * FROM `stocklinear_$name` ORDER BY id DESC LIMIT 1";
    $value = mysqli_fetch_assoc(mysqli_query($c, $livesql));
    return(float)$value['newPrice'];
    
}
$status = 'true';
$load = array() ;


foreach ($stockarray as $key => $value) {
    $load[]=array(
        "id" => $key,
        "stock" => $value,
        "price" => getValueo($value,$conn)
    );
}


echo json_encode(["status" => $status, "data" => $load]);


    // echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);

?>