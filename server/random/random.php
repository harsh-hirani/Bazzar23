<?php

header('Content-Type:application/json');
include '../conn.php';
function getValueAllByParts($stockId,$ar,$c){
    $livesql = "SELECT * FROM `stocklinear_$ar[$stockId]` ORDER BY id DESC LIMIT 1";
    $value = mysqli_fetch_assoc(mysqli_query($c, $livesql));
    $value['newPrice'] = (float)$value['newPrice'];
    return $value;
}
function generateRandomValue() {
    $up= rand(0, 1);
    $change = rand(0, 15)/100000;
    if($up==1){
        return $change;}
        else{
            return -$change;
        }
}function vol(){
    return 3000*rand(0,99);
}
 foreach ($stockarray as $key => $value) {
    $quantity = vol();
    $dump = getValueAllByParts($key,$stockarray,$conn);
    $prev = $dump['newPrice'];
    $newprice = $prev + $prev* generateRandomValue();
    
    $sql = "INSERT INTO `stocklinear_$value`(`datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES 
    ('10','0','$quantity','$newprice','$prev')";
        if (mysqli_query($conn,$sql)) {
            echo "Success .".$value;
            # code...
        }else{
            echo "Failed ".mysqli_error($conn);
        }
 }

?>