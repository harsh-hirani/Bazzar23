<?php

include '../conn.php';


    $sql1 = "ALTER TABLE `user_current_sts` CHANGE `balance` `balance` FLOAT(30) NOT NULL, CHANGE `lose` `lose` FLOAT(30) NOT NULL, CHANGE `profit` `profit` FLOAT(30) NOT NULL";
    if(mysqli_query($conn,$sql1)){
        echo "success - user_current_sts<br>";
    }else{
        echo "error - user_current_sts<br>";
        echo mysqli_error($conn)."<br>";
    }
    $sql2 = "SELECT uname FROM `users`";
    $data = mysqli_query($conn,$sql2);
    for ($i=0; $i < mysqli_num_rows($data); $i++){
        $tmp = mysqli_fetch_assoc($data);
        $uname = $tmp['uname'];
        $sql3 = "ALTER TABLE `".$uname."_portfolio` CHANGE `value` `value` FLOAT(30) NOT NULL, CHANGE `cost` `cost` FLOAT(30) NOT NULL, CHANGE `pal` `pal` FLOAT(30) NOT NULL";
        if(mysqli_query($conn,$sql3)){
            echo "success - ".$uname."_portfolio<br>";
        }else{
            echo "error - ".$uname."_portfolio<br>";
            echo mysqli_error($conn)."<br>";
        }

    } 
        
    mysqli_query($conn,"ALTER TABLE `user_current_sts` ADD `tax` FLOAT(20) NOT NULL AFTER `profit`;");
for ($i=1; $i < 18; $i++){ 
    $sql = "ALTER TABLE `stock_profile_".$stockarray[$i]."` CHANGE `open` `open` FLOAT(50) NOT NULL, CHANGE `high` `high` FLOAT(50) NOT NULL, CHANGE `low` `low` FLOAT(50) NOT NULL, CHANGE `close` `close` FLOAT(50) NOT NULL;";
    if ((mysqli_query($conn, $sql))) {
        echo "success - ".$stockarray[$i]." 1<br>";
    }
    $sql = "ALTER TABLE `stocklinear_".$stockarray[$i]."` CHANGE `newPrice` `newPrice` FLOAT(50) NOT NULL, CHANGE `beforePrice` `beforePrice` FLOAT(50) NOT NULL;";
    if ((mysqli_query($conn, $sql))) {
        echo "success - ".$stockarray[$i]." 2<br>";
    }
    
}
?>