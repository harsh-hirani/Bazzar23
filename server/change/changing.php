<?php
header('Content-Type:application/json');
include '../conn.php';
$senddata = [];
foreach ($_POST as $key => $value) {
    try{

        $key = (int)$key;
        $value = (float)$value;
        $old = getValue($key,$stockarray,$conn);
        $newprice = $old+ $value*0.01*$old;
        $sql = "INSERT INTO `stocklinear_".$stockarray[$key]."`(`datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES 
        ('10','0','0','$newprice','$old')";
           if(mysqli_query($conn,$sql)){
                  $senddata[] = array(
                    "id" => $key,
                    "name" => $stockarray[$key],
                    "prevValue"=>(float)$old,
                    "nextValue"=>(float)$newprice
                  );
           }else{
                $senddata[]=array
                ("error" => mysql_error($conn));
           }
    }catch(Exception $e){
        $senddata[]=array
        ("error" => $e);
    }
}
echo json_encode(["status" => 'true', "data" => $senddata]);
?>