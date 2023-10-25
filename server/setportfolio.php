<?php
include 'conn.php';
header('Content-Type:application/json');
$status = 'false';  
$quantity = $_POST['quantity'];
$stockId = $_POST['stockId'];
$operation = $_POST['operation'];
$time = floor(microtime(true) * 1000);


$value = getValue($stockId,$stockarray,$conn);
if ($operation == 'buy') {
    $opcode = 0;
    //INSERT INTO `name_portfolio` (`id`, `stockId`, `quantity`) 
    //VALUES ( '1', '50', '60', '-1', '-1', '1697037390671', '-1', '0');

    $sql = "INSERT INTO `".$username."_portfolio` (`stockId`, `quantity`, `value`, `cost`, `pal`, `buyDate`, `sellDate`, `fixed`) 
    VALUES ('$stockId', '$quantity','$value','-1','-1',$time,'-1','0')";
    $data = mysqli_query($conn,$sql);
    if ($data) {
        $status = 'true';
        $newprice = $value + 0.32*$quantity;
        $buysql = "INSERT INTO `stocklinear_$stockarray[$stockId]`(`datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES 
        ('$time','$opcode','$quantity','$newprice','$value')";
        mysqli_query($conn,$buysql);
        $balance =(int) mysqli_fetch_assoc(mysqli_query($conn,$sql = "SELECT balance from `user_current_sts` where id=$id"))['balance'];
        $finalbalance = $balance - $value * $quantity;
        $updatebalancesql = "UPDATE `user_current_sts` SET `balance`='$finalbalance',`date`='$time' WHERE id=$id";
        mysqli_query($conn,$updatebalancesql);
        echo json_encode(["status" => $status, "data" => array("message" => "success","name"=>$stockarray[$stockId],"price" => $value,"newprice"=>$newprice,"quantity" => $quantity,"balance" => $finalbalance)]);
    }else{
        echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
    }
}else if($operation == 'shortsell'){
    $opcode = 2;
    $sql = "INSERT INTO `".$username."_portfolio` (`stockId`, `quantity`, `value`, `cost`, `pal`, `buyDate`, `sellDate`, `fixed`) 
    VALUES ('$stockId', '$quantity','$value','-1','-1',$time,'-1','2')";
    $data = mysqli_query($conn,$sql);
    if ($data) {
        $status = 'true';
        $newprice = $value - 0.32*$quantity;
        $buysql = "INSERT INTO `stocklinear_$stockarray[$stockId]`(`datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES 
        ('$time','$opcode','$quantity','$newprice','$value')";
        mysqli_query($conn,$buysql);
        $balance =(int) mysqli_fetch_assoc(mysqli_query($conn,$sql = "SELECT balance from `user_current_sts` where id=$id"))['balance'];
        $finalbalance = $balance - $value * $quantity;
        $updatebalancesql = "UPDATE `user_current_sts` SET `balance`='$finalbalance',`date`='$time' WHERE id=$id";
        mysqli_query($conn,$updatebalancesql);
        echo json_encode(["status" => $status, "data" => array("message" => "success","name"=>$stockarray[$stockId],"price" => $value,"newprice"=>$newprice,"quantity" => $quantity,"balance" => $finalbalance)]);
    }else{
        echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
    }
}elseif ($operation == 'sell') {
    $opcode = 1;
    $sql = "SELECT * FROM `".$username."_portfolio` WHERE stockId = '$stockId' AND fixed = '0' ORDER BY id ASC ";
    $data = mysqli_query($conn,$sql);
    if ($data) {
        $status = 'true';
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
                $sql = "UPDATE `".$username."_portfolio` set `fixed`='1',`cost`='$value',`pal`='',`sellDate`='$time' where id='".$row['id']."'";
                 mysqli_query($conn,$sql);

                $quantityLeft = $quantityLeft - $quantityInRow;
            }else{
                $sql = "UPDATE `".$username."_portfolio` set `fixed`='1',`cost`='$value',`pal`='',`sellDate`='$time',`quantity`='$quantityLeft' where id='".$row['id']."'";
                 mysqli_query($conn,$sql); 
                $addQuantity = $quantityInRow - $quantityLeft;
                $pppp = $row['value'];
                $sql = "INSERT INTO `".$username."_portfolio` (`stockId`, `quantity`, `value`, `cost`, `pal`, `buyDate`, `sellDate`, `fixed`)
                values ('$stockId', '$addQuantity','$pppp','-1','-1','$time','-1','0')"; 
                 mysqli_query($conn,$sql);
                $quantityLeft = 0;
            }
            
            
            $i++;
        }
        
        // echo json_encode(["status" => $status, "load" => $load]);
        $newprice = $value - 0.35*($quantity-$quantityLeft);
        $buysql = "INSERT INTO `stocklinear_$stockarray[$stockId]`(`datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES 
        ('$time','$opcode','$quantity','$newprice','$value')";
        mysqli_query($conn,$buysql);
        $balance =(int) mysqli_fetch_assoc(mysqli_query($conn,$sql = "SELECT balance from `user_current_sts` where id=$id"))['balance'];
        $finalbalance = $balance + $value * ($quantity-$quantityLeft);
        $updatebalancesql = "UPDATE `user_current_sts` SET `balance`='$finalbalance',`date`='$time' WHERE id=$id";
        mysqli_query($conn,$updatebalancesql);
        echo json_encode(["status" => $status, "data" => array("message" => "success","name"=>$stockarray[$stockId],"price" => $value,"newprice"=>$newprice,"quantity" => ($quantity-$quantityLeft),"balance"=>$finalbalance)]);
    }else{
        echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
    }

}elseif($operation == "shortbuy"){
    $opcode = 3;
    $sql = "SELECT * FROM `".$username."_portfolio` WHERE stockId = '$stockId' AND fixed = '2' ORDER BY id ASC ";
    $data = mysqli_query($conn,$sql);
    if ($data) {
        $status = 'true';
         $load = array() ;
        for($i=0;$i<mysqli_num_rows($data);$i++){
            $dump = mysqli_fetch_assoc($data);
            $load[$i] = $dump;
        }

        $quantityLeft = $quantity;
        $i = 0;
        $piceincome = 0;
        while ($quantityLeft > 0) {
            if($i==mysqli_num_rows($data))break;
            $row = $load[$i];
            $quantityInRow = $row['quantity'];
            $valuein = $row['value'];
            if ($quantityLeft >= $quantityInRow){
                $sql = "UPDATE `".$username."_portfolio` set `fixed`='3',`cost`='$value',`pal`='',`sellDate`='$time' where id='".$row['id']."'";
                mysqli_query($conn,$sql);
                
                $quantityLeft = $quantityLeft - $quantityInRow;
                $piceincome = $piceincome + (($valuein * 2 ) - $value)*$quantityInRow;
            }else{
                $sql = "UPDATE `".$username."_portfolio` set `fixed`='3',`cost`='$value',`pal`='',`sellDate`='$time',`quantity`='$quantityLeft' where id='".$row['id']."'";
                 mysqli_query($conn,$sql); 
                $addQuantity = $quantityInRow - $quantityLeft;
                $piceincome = $piceincome + (($valuein * 2 ) - $value)*$quantityLeft;
                $pppp = $row['value'];
                $sql = "INSERT INTO `".$username."_portfolio` (`stockId`, `quantity`, `value`, `cost`, `pal`, `buyDate`, `sellDate`, `fixed`)
                values ('$stockId', '$addQuantity','$pppp','-1','-1','$time','-1','0')"; 
                 mysqli_query($conn,$sql);
                $quantityLeft = 0;
            }
            
            
            $i++;
        }
        
        // echo json_encode(["status" => $status, "load" => $load]);
        $newprice = $value + 0.35*($quantity-$quantityLeft);
        $buysql = "INSERT INTO `stocklinear_$stockarray[$stockId]`(`datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES 
        ('$time','$opcode','$quantity','$newprice','$value')";
        mysqli_query($conn,$buysql);
        $balance =(int) mysqli_fetch_assoc(mysqli_query($conn,$sql = "SELECT balance from `user_current_sts` where id=$id"))['balance'];


        $finalbalance = $balance + $piceincome;
        $updatebalancesql = "UPDATE `user_current_sts` SET `balance`='$finalbalance',`date`='$time' WHERE id=$id";
        mysqli_query($conn,$updatebalancesql);
        echo json_encode(["status" => $status, "data" => array("message" => "success","name"=>$stockarray[$stockId],"price" => $value,"newprice"=>$newprice,"quantity" => ($quantity-$quantityLeft),"balance"=>$finalbalance)]);
    }else{
        echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
    }

}


?>