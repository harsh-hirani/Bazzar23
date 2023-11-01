<?php
include 'conn.php';
$card = $_POST['card'];
$password = $_POST['passs'];
$sql = "SELECT * FROM users WHERE (phone = '$card' or email= '$card')and data = '".md5($password)."' limit 1";
$result = mysqli_query($conn,$sql);
if (mysqli_num_rows($result)>0){

$dump = mysqli_fetch_assoc($result);
setcookie("username", $dump["uname"], time() + (86400 * 30), "/");
setcookie("userId", $dump["id"], time() + (86400 * 30), "/");
setcookie('lname',$dump["lname"], time() + (86400 * 30), "/");
setcookie('fname',$dump["fname"], time() + (86400 * 30), "/");
echo "<script>
location.replace('../');
    </script>";
}else{
    echo "    <script>
alert('invalid ');
location.replace('../login');
    </script>
    ";
}
?>