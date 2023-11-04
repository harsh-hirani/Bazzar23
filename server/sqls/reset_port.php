<?php
try{


include '../conn.php';
$sql = 'SELECT * FROM `users`';
$res = mysqli_query($conn, $sql);
$nums = mysqli_num_rows($res);
for ($i=0; $i < $nums; $i++) { 
    $dump = mysqli_fetch_assoc($res);
   $sql=" DELETE FROM ".$dump['uname']."_portfolio WHERE `id` > 0";
   if(mysqli_query($conn, $sql)){
       echo "success - ".$dump['uname']."<br>";}
       else{
              echo "error - ".$dump['uname']."<br>";
              echo mysqli_error($conn)."<br>";
       }
}}catch(Exception $e){
    echo $e;
}
?>