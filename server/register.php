<?php
include 'conn.php'; 
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$name = $fname."_".$lname;
$phone = $_POST['phone'];
$email = $_POST['email'];
$password = $_POST['passs'];
// $preference = $_POST['preference'];
$time = floor(microtime(true) * 1000);
$checksql = "SELECT * FROM `users` WHERE `email` = '$email' OR `phone` = '$phone'";
$result = $conn->query($checksql);
$rows = mysqli_num_rows($result);
// echo $checksql.' worlk '.$rows;
if($rows > 0){

    echo "<script> alert('user already exists so we are redirecting you to login page:>');location.replace('../login')</script>";
   
}else{




$sql = "INSERT INTO `users`(`fname`, `lname`, `uname`, `email`, `phone`, `data`, `date`)
                    VALUES ('$fname','$lname','$name','$email','$phone','".md5($password)."', ".$time.")";
if(isset($_POST['test']) && $_POST['test']=="true"){
    echo $sql ."\n";
}
if ($conn->query($sql) === TRUE) {

    $tablesql = "
    CREATE TABLE `bazzar`.`".$name."_portfolio` ( `id` INT(255) NOT NULL AUTO_INCREMENT ,
     `stockId` INT(11) NOT NULL ,
      `quantity` INT(11) NOT NULL ,
       `value` FLOAT(20) NOT NULL ,
        `cost` FLOAT(20) NOT NULL ,
         `pal` FLOAT(20) NOT NULL ,
         `buyDate` BIGINT(20) NOT NULL ,
         `sellDate` BIGINT(20) NOT NULL ,
         `fixed` INT(11) NOT NULL ,
          PRIMARY KEY (`id`)) ENGINE = InnoDB";
    $conn->query($tablesql);
    $sql = "SELECT * FROM `users` WHERE `uname` = '$name' AND `email` = '$email'";
    $result = $conn->query($sql);
    $id = mysqli_fetch_assoc($result)['id'];
    $sql = "INSERT INTO `user_current_sts`( `id`,`balance`, `lose`, `profit`, `tax`, `date`, `isAllowed`) VALUES 
    ('$id','100000','0','0','0','$time','1')";
    $conn->query($sql);
    setcookie("username", $name, time() + (86400 * 30), "/");
    setcookie("userId", $id, time() + (86400 * 30), "/");

    echo "New record created successfully<a href='../index.php'>Go Home</a>";
    echo "<script>location.replace('../index.php')</script>";
}else{
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}
?>