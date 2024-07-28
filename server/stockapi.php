<?php
include 'conn.php'; 
header('Content-Type:application/json');

if (isset($_POST['stockId'])) {
    $SQL = "SELECT time as Date,open as Open,high as High,low as Low,close as Close,volume as Volume FROM stock_profile_".$stockarray[$_POST['stockId']];

    $data = mysqli_query($conn,$SQL);
    if ($data) {
        $status = 'true';
        $load = array() ;
        for($i=0;$i<mysqli_num_rows($data);$i++){
            $dump = mysqli_fetch_assoc($data);
            // convert to float from string for compatibility
            foreach ($dump as $key => $value) {
                $dump[$key] = (float)$value;
            }
            $load[$i] = $dump;
        }
        echo json_encode(["status" => $status, "data" => $load]);
    }else{  
        echo json_encode(["status" => $status, "data" => array("error" => mysqli_error($conn))]);
    }
}

?>