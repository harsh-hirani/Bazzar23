<?php
include 'conn.php'; 
$name = $_POST['name'];
$contact = $_POST['contact'];
$preference = $_POST['preference'];
$sql = "INSERT INTO `users`(`name`, `contact`, `preference`, `date`)
 VALUES ('$name','$contact','$preference',".floor(microtime(true) * 1000).")";
if(isset($_POST['test']) && $_POST['test']=="true"){
    echo $sql ."\n";
}
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
}else{
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>