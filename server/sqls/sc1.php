<?php
include '../conn.php';
$nums = array(9265473576,
    7777933964,
    9265950719,
    7543021134,
    7359838009,
    9099765280,
    9428269000,
    9909699431,
    9726263600,
    7043206010,
    8732988749,
    7016018593,
    9998737090,
    9265545247,
    9265851544,
    9313187764,
    9426445433,
    7227846604,
    9712655309,
    9723414396,
    8511268432,
    7984932842,
    7046020129,
    7778079566,
    6354788974,
    9920797739,
    8866381722,
    9825685511,
    9106928542,
    9825406781,
    9978411071,
    9974195157,
    9106352904,
    7016386880,
    9974195157,
    8000880217,
    8758267026,
    9157700722,
    8849644580,
    6351037798,
    9427536850,
    9265091831,
    9265108149,
    9429228204,
    6352823545,
    9429873365,
    9106230822,
    7802817800,
    9879062209,
    9316086527,
    7069916305,
    7820092466,
    9974034821,
    7265809318,
    7801847788,
    9586404882,
    9428781033,
    6359576711,
    9638750931,
    7021534098,
    8128485538,
    9313868830,
    7859929796,
    9351398644,
    7990737480,
    6232656688,
    7801877777,
    9998860938,
    9824301041,
    6353073977,
    9879963692,
    9898717789,
    8320412491,
    7984907496,
    9979229576,
    8866939139,
    9510102600,
    7984830996,
    9512816425,
    8401517430,
    6354366091,
    9624815333,
    9512457000,
    9429729407,
    8487071837,
    97374605,
    7777933964,
    9054653088,
    9575278699,
    9521084089,
    6354234719,
    7303662932,
    9413752399,
    9462979898,
    7779033236,
    9023828009,
    97374605,
    7777933964,
    9054653088,
    9575278699,
    9521084089,
    6354234719,
    7303662932,
    9413752399,
    9462979898,
    7779033236,
    9023828009,
    8780839751,
    9601551848,
    6354725814,
    8866589242,
    9265961177,
    9106562620,
    7041650998,
    8866744208,
    7041565655,
    9662663900,
    8619221482,
    7043964580,
    9925760320,
    9601185764,
    9978795554,
    7778889363,
    7016224554,
    9898999440,
    8155918098
);

for ($i = 0; $i < count($nums); $i++) {
    $num = $nums[$i];
    $sql = "INSERT INTO `codes` (`id`, `number`,`byWhom`,`uname`,`date`) VALUES (NULL, '$num','0','0','0' );";
    echo $i." - ".$sql . " ||<br>";
    if (mysqli_query($conn, $sql)) {
        echo 'success<br>';
    }else{
        echo mysqli_error($conn).'<br>';
    }
}
?>