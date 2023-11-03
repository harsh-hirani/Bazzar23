<?php
include '../server/conn.php';
$fname= trim($_POST['fname']);
$lname= trim($_POST['lname']);
$phone= trim($_POST['phone']);
$email= trim($_POST['email']);
$pass= trim($_POST['pass']);
$name = $fname."_".$lname;


$time = floor(microtime(true) * 1000);
$sql = "SELECT * FROM `codes` where `number`='$phone'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    $dump = mysqli_fetch_assoc($result);
    $byWhom = $dump['byWhom'];
    $uname = $dump['uname'];
    if($uname == 0 || $uname == '0'){
        $sql = "INSERT INTO `users`(`fname`, `lname`, `uname`, `email`, `phone`, `data`, `date`)
        VALUES ('$fname','$lname','$name','$email','$phone','".$pass."', ".$time.")";
        mysqli_query($conn,$sql);
        $tablesql = "
            CREATE TABLE `".$name."_portfolio` ( `id` INT(255) NOT NULL AUTO_INCREMENT ,
            `stockId` INT(11) NOT NULL ,
            `quantity` INT(11) NOT NULL ,
            `value` FLOAT(20) NOT NULL ,
                `cost` FLOAT(20) NOT NULL ,
                `pal` FLOAT(20) NOT NULL ,
                `buyDate` BIGINT(20) NOT NULL ,
                `sellDate` BIGINT(20) NOT NULL ,
                `fixed` INT(11) NOT NULL ,
        PRIMARY KEY (`id`)) ENGINE = InnoDB";
        mysqli_query($conn,$tablesql);
        $sql = "SELECT * FROM `users` WHERE `uname` = '$name' AND `email` = '$email'";
        $result =mysqli_query($conn,$sql);
        $idd = mysqli_fetch_assoc($result)['id'];
        $sql = "INSERT INTO `user_current_sts`( `id`,`balance`, `invest`, `profit`, `tax`, `date`, `freez`) VALUES 
        ('$idd','100000','0','0','0','$time','0')";

        if( mysqli_query($conn,$sql)){
            echo "New record created successfully";
        }else{
            echo "New record not created successfully";
        }
        
        $sql = "UPDATE `codes` SET `uname`='$name',`byWhom`='$idd',`date`='$time' WHERE `number`='$phone'";
        mysqli_query($conn,$sql);
        setcookie("username", $name, time() + (86400 * 30), "/");
        setcookie('fname',$fname,time()+(86400*30),"/");
        setcookie('lname',$lname,time()+(86400*30),"/");
        setcookie("userId", $idd, time() + (86400 * 30), "/");

        echo "New record created successfully<a href='../index.php'>Go Home</a>";
        echo "<script>location.replace('../index.php')</script>";
    }

    else{//login
        $sql = "SELECT * FROM `users` WHERE `id` = '$byWhom'"; 
        setcookie("username", $dump["uname"], time() + (86400 * 30), "/");
        $dump = mysqli_fetch_assoc(mysqli_query($conn, $sql));
        setcookie("userId", $dump["id"], time() + (86400 * 30), "/");
        setcookie('lname',$dump["lname"], time() + (86400 * 30), "/");
        setcookie('fname',$dump["fname"], time() + (86400 * 30), "/");
        echo "<script> location.replace('../'); </script>";
    }
}else{
    echo "<script>alert('invalid');location.replace('../login');</script>";
}

?>