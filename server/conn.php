<?php

//  $conn = mysqli_connect("localhost", "root", "", "bazzar");
 $conn = mysqli_connect("localhost", "restless", "goGETit", "bazzar");
$stockarray = array(
1=>'tcs',
2=>'jfs',
3=>'infosys',
4=>'wipro',
5=>'lic',
6=>'hdfc',
7=>'sbi',
8=>'bajaj',
9=>'yes',
10=>'maruti',
11=>'tatam',
12=>'bajaja',
13=>'bharat',
14=>'sun',
15=>'dr',
16=>'zydus',
17=>'cipla',
18=>'titan',
19=>'page',
20=>'hul',
21=>'tata',
22=>'adani',
23=>'jindal',
24=>'tatas',
25=>'coal',
26=>'adanip',
27=>'amb',
28=>'larsen',
29=>'tatap',
30=>'ultra',
31=>'reliance',
32=>'ongc',
33=>'ioc',
34=>'gail'
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