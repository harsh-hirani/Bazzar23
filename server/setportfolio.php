<?php
include 'conn.php';
header('Content-Type:application/json');
$status = 'false';  
$username = $_POST['username'];
$quantity = $_POST['quantity'];
$stockId = $_POST['stockId'];
$operation = $_POST['operation'];
$time = floor(microtime(true) * 1000);

function getValue($stockId){
    return 50;
}
$value = getValue($stockId);
if ($operation == 'buy') {
    //INSERT INTO `name_portfolio` (`id`, `stockId`, `quantity`) 
    //VALUES ( '1', '50', '60', '-1', '-1', '1697037390671', '-1', '0');

    $sql = "INSERT INTO `".$username."_portfolio` (`stockId`, `quantity`, `value`, `cost`, `pal`, `buyDate`, `sellDate`, `fixed`) 
    VALUES ('$stockId', '$quantity','$value','-1','-1',$time,'-1','0')";
    $data = mysqli_query($conn,$sql);
    if ($data) {
        $status = 'true';
        echo json_encode(["status" => $status, "data" => array("message" => "success")]);
    }else{
        echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
    }
}elseif ($operation == 'sell') {
    $sql = "SELECT * FROM `".$username."_portfolio` WHERE stockId = '$stockId' AND fixed = '0' ORDER BY id ASC ";
    $data = mysqli_query($conn,$sql);
    if ($data) {
        // $status = 'true';
         $load = array() ;
        for($i=0;$i<mysqli_num_rows($data);$i++){
            $dump = mysqli_fetch_assoc($data);
            $load[$i] = $dump;
        }

        $quantityLeft = $quantity;
        $i = 0;
        while ($quantityLeft > 0) {
            if($i==mysqli_num_rows($data))break;
            $row = $load[$i];
            $quantityInRow = $row['quantity'];
            if ($quantityLeft >= $quantityInRow){
                $sql = "UPDATE `name_portfolio` set `fixed`='1',`cost`='$value',`pal`='',`sellDate`='$time' where id='".$row['id']."'";
                 mysqli_query($conn,$sql);

                $quantityLeft = $quantityLeft - $quantityInRow;
            }else{
                $sql = "UPDATE `name_portfolio` set `fixed`='1',`cost`='$value',`pal`='',`sellDate`='$time',`quantity`='$quantityLeft' where id='".$row['id']."'";
                 mysqli_query($conn,$sql); 
                $addQuantity = $quantityInRow - $quantityLeft;
                $sql = "INSERT INTO `".$username."_portfolio` (`stockId`, `quantity`, `value`, `cost`, `pal`, `buyDate`, `sellDate`, `fixed`)
                values ('$stockId', '$addQuantity','$value','-1','-1','$time','-1','0')"; 
                 mysqli_query($conn,$sql);
                $quantityLeft = 0;
            }
            
            
            $i++;
        }
        // echo json_encode(["status" => $status, "load" => $load]);
        echo json_encode(["status" => $status, "data" => array("message" => "success")]);
    }else{
        echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
    }

}


?>