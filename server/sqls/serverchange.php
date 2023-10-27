<?php

include '../conn.php';
for ($i=1; $i < 18; $i++){ 
    $sql = "ALTER TABLE `stock_profile_".$stockarray[$i]."` CHANGE `open` `open` FLOAT(50) NOT NULL, CHANGE `high` `high` FLOAT(50) NOT NULL, CHANGE `low` `low` FLOAT(50) NOT NULL, CHANGE `close` `close` FLOAT(50) NOT NULL;";
    // $sql = "ALTER TABLE `stocklinear_".$stockarray[$i]."` CHANGE `newPrice` `newPrice` FLOAT(50) NOT NULL, CHANGE `beforePrice` `beforePrice` FLOAT(50) NOT NULL;";
    if ((mysqli_query($conn, $sql))) {
        echo "success - ".$stockarray[$i]."<br>";
    }

}
?>