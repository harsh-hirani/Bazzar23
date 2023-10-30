<?php
include '../conn.php';
for ($i=1; $i < 35; $i++){
    try{

        $sql = "CREATE TABLE `stocklinear_".$stockarray[$i]."` ( `id` INT(255) NOT NULL AUTO_INCREMENT , `datetime` BIGINT(20) NOT NULL , `buyOrSell` INT(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1' , `quantity` INT(200) NOT NULL , `newPrice` FLOAT(50) NOT NULL , `beforePrice` FLOAT(50) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
        if ((mysqli_query($conn, $sql))) {
            echo "success - ".$stockarray[$i]." 1<br>";
        }else{
            echo "error - ".$stockarray[$i]." 1<br>";
            echo mysqli_error($conn)."<br>";
        }
        $sql = "CREATE TABLE `stock_profile_".$stockarray[$i]."` ( `id` INT(255) NOT NULL AUTO_INCREMENT , `time` BIGINT(20) NOT NULL , `open` FLOAT(11) NOT NULL , `high` FLOAT(11) NOT NULL , `low` FLOAT(11) NOT NULL , `close` FLOAT(11) NOT NULL , `volume` INT(11) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
        if ((mysqli_query($conn, $sql))) {
            echo "success - ".$stockarray[$i]." 2<br>";
        }else{
            echo "error - ".$stockarray[$i]." 2<br>";
            echo mysqli_error($conn)."<br>";
        }
    }catch(Exception $e){
        echo "error - ".$stockarray[$i]." 3<br>";
        echo $e->getMessage()."<br>";
    }
}
$values = array(
    3350,220,1380,380,600,1470,560,7500,15,
    10560,640,5370,1020,1110,5400,570,1170,
    3120,37540,2480,890,2260,640,120,310,
    780,420,2900,240,8210,2270,180,90,120
);
for ($i=1; $i < 35; $i++){

    // $sql = "INSERT INTO `stocklinear_".$stockarray[$i]."` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES (NULL, '1697341129959', '1', '0', '".$values[$i-1]."', '0');";
    // if(mysqli_query($conn,$sql)){
    //     echo "success - ".$stockarray[$i]." 1<br>";}
    $sql = "INSERT INTO `stocklinear_".$stockarray[$i]."` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES (NULL, '1697341129959', '1', '0', '".$values[$i-1]."', '0');";
    if(mysqli_query($conn,$sql)){
        echo "success - ".$stockarray[$i]." 1<br>";}
}

?>