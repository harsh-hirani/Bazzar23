<?php

$conn = mysqli_connect("localhost", "root", "", "bazzar");
$stockarray = array(
    1=>'axis',
    2=>'hdfc'

);
function getValue($stockId,$ar,$c){
    $livesql = "SELECT newPrice FROM `stocklinear_$ar[$stockId]` ORDER BY id DESC LIMIT 1";
    $value = mysqli_fetch_assoc(mysqli_query($c, $livesql))['newPrice'];
    return (int)$value;
}
// $id = 1;
$id = $_COOKIE['userId'];
$username = $_COOKIE['username'];
?>