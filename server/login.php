<?php
$name = $_POST['name'];
$contact = $_POST['password'];
include 'conn.php';
$sql = "SELECT * FROM users WHERE name = '$name' AND contact = '$contact' limit 1";
$result = $conn->query($sql);
if (mysqli_num_rows($result)>0){

$dump = mysqli_fetch_assoc($result);
setcookie("username", $dump["name"], time() + (86400 * 30), "/");
setcookie("userId", $dump["id"], time() + (86400 * 30), "/");

echo "<script>
location.replace('../index.php');
    </script>";
}else{
    echo "    <script>
alert('invalid');
location.replace('../login.php');
    </script>
    ";
}
echo "sdkbuidsiues";
?>