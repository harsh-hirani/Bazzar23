<?php
include 'conn.php';


header('Content-Type:application/json');
$status = 'false';
if (isset($_POST['username']) ) {
    if($_COOKIE['username'] == $_POST['username'] || $_POST['username'] != ""){
        $sql = "SELECT * FROM `name_portfolio`";
        $data = mysqli_query($conn,$sql);
        if ($data) {
            $status = 'true';
             $load = array() ;
            for($i=0;$i<mysqli_num_rows($data);$i++){
                $dump = mysqli_fetch_assoc($data);
                $load[$i] = $dump;
            }
            echo json_encode(["status" => $status, "data" => $load]);
        }else{
            if ($_POST['test'] == 'true') {
                
                echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
                
            }else{
                echo json_encode(["status" => $status, "data" => array("error" => "error")]);
            }
        }
    }else{
        $send= "you don't have right to access portfolio of ".$_POST['username'];
        echo json_encode(["status" => $status, "data" => array("error" => $send)]);
    }
}else{
    $send= 'you have not provided username';
    echo json_encode(["status" => $status, "data" => array("error" => $send)]);
}

mysqli_close($conn);
?>