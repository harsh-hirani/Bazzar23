<?php

setcookie("username", "name", time() + (-1 * 1), "/");
setcookie("userId", "1", time() + (-1 * 1), "/");
echo "<script> window.location.href='./index.php';</script>";

?>