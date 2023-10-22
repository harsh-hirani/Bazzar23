<?php
include 'conn.php'; 
$name = $_POST['name'];
$contact = $_POST['password'];
// $preference = $_POST['preference'];
$time = floor(microtime(true) * 1000);
$sql = "INSERT INTO `users`(`name`, `contact`, `preference`, `date`)
 VALUES ('$name','$contact','$contact',".$time.")";
if(isset($_POST['test']) && $_POST['test']=="true"){
    echo $sql ."\n";
}
if ($conn->query($sql) === TRUE) {

    $tablesql = "
    CREATE TABLE `bazzar`.`".$name."_portfolio` ( `id` INT(255) NOT NULL AUTO_INCREMENT ,
     `stockId` INT(11) NOT NULL ,
      `quantity` INT(11) NOT NULL ,
       `value` INT(11) NOT NULL ,
        `cost` INT(11) NOT NULL ,
         `pal` INT(11) NOT NULL ,
         `buyDate` BIGINT(20) NOT NULL ,
         `sellDate` BIGINT(20) NOT NULL ,
         `fixed` INT(11) NOT NULL ,
          PRIMARY KEY (`id`)) ENGINE = InnoDB";
    $conn->query($tablesql);
    $sql = "SELECT * FROM `users` WHERE `name` = '$name' AND `contact` = '$contact'";
    $result = $conn->query($sql);
    $id = mysqli_fetch_assoc($result)['id'];
    $sql = "INSERT INTO `user_current_sts`( `id`,`balance`, `lose`, `profit`, `date`, `isAllowed`) VALUES 
    ('$id','100000','0','0','$time','1')";
    $conn->query($sql);
    setcookie("username", $name, time() + (86400 * 30), "/");
    setcookie("userId", $id, time() + (86400 * 30), "/");

    echo "New record created successfully<a href='../index.php'>Go Home</a>";
}else{
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>