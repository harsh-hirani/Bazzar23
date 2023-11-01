<?php

include '../conn.php';
try{
    $values = array(
        3350,220,1380,380,600,1470,560,7500,15,
        10560,640,5370,1020,1110,5400,570,1170,
        3120,37540,2480,890,2260,640,120,310,
        780,420,2900,240,8210,2270,180,90,120
    );
    for ($i=1; $i < 35; $i++){
    
        $sql = "DELETE FROM stock_profile_".$stockarray[$i]." WHERE `id` > 0";
        // $sql = "INSERT INTO `stock_profile_".$stockarray[$i]."` (`time`, `open`, `high`, `low`, `close`, `volume`) VALUES ('1697341129959', '".$values[$i-1]."', '".($values[$i-1]+2)."','".($values[$i-1]-2)."', '".$values[$i-1]."', '0');";
        if(mysqli_query($conn,$sql)){
            echo "success - ".$stockarray[$i]." 1<br>";}
        }
        $sql = "DELETE FROM stocklinear_".$stockarray[$i]." WHERE `id` > 0";
        if(mysqli_query($conn,$sql)){
            echo "success - ".$stockarray[$i]." 2<br>";
        }
        $sql = "INSERT INTO `stocklinear_".$stockarray[$i]."` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES (NULL, '1697341129959', '1', '0', '".$values[$i-1]."', '0');";
        if(mysqli_query($conn,$sql)){
            echo "success - ".$stockarray[$i]." 3<br>";
        }

}catch(Exception $e){
    echo "error - ".$stockarray[$i]." 3<br>";
    echo $e->getMessage()."<br>";
}