<?php

$conn = mysqli_connect("localhost", "root", "", "bazzar");
// $conn = mysqli_connect("localhost", "restless", "goGETit", "bazzar");
$stockarray = array(
1=>'tata',
2=>'maruti',
3=>'hdfc',
4=>'asian',
5=>'ultra',
6=>'titan',
7=>'poly',
8=>'bajaj',
9=>'hind',
10=>'sun',
11=>'gail',
12=>'larsen',
13=>'lic',
14=>'reliance',
15=>'tcs',
16=>'infosys',
17=>'page'
);
function getValue($stockId,$ar,$c){
    $livesql = "SELECT newPrice FROM `stocklinear_$ar[$stockId]` ORDER BY id DESC LIMIT 1";
    $value = mysqli_fetch_assoc(mysqli_query($c, $livesql))['newPrice'];
    return (float)$value;
}
// $id = 1;
if (isset($_COOKIE['userId'])&& isset($_COOKIE['username'])) {
    # code...
    $id = $_COOKIE['userId'];
    $username = $_COOKIE['username'];
}
?>