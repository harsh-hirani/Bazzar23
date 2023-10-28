<?php

include 'conn.php';
header('Content-Type:application/json');



function getValueAllByParts($stockId,$ar,$c){
    $livesql = "SELECT * FROM `stock_profile_$ar[$stockId]` ORDER BY id DESC LIMIT 1";
    $value = mysqli_fetch_assoc(mysqli_query($c, $livesql));
    return $value;
}
$status = 'true';
$load = array() ;

for($i=1;$i<=17;$i++){

    $dump = getValueAllByParts($i,$stockarray,$conn);
    $load[] = array(
        "id" => $i,
        "name" => $stockarray[$i],
        "prevValue"=>(float)$dump['open'],
        "nextValue"=>(float)$dump['close']
    );
}

echo json_encode(["status" => $status, "data" => $load]);


    // echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);

?>