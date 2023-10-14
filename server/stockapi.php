<?php
header('Content-Type:application/json');
$arry = array(
    0=>'axis',
    1=>'hdfc'
);
if (isset($_POST['stockId'])) {
    $SQL = "SELECT time as Date,open as Open,high as High,low as Low,close as Close,volume as Volume FROM stock_profile_".$arry[$_POST['stockId']];

    include 'conn.php'; 
    $data = mysqli_query($conn,$SQL);
    if ($data) {
        $status = 'true';
        $load = array() ;
        for($i=0;$i<mysqli_num_rows($data);$i++){
            $dump = mysqli_fetch_assoc($data);
            foreach ($dump as $key => $value) {
                $dump[$key] = (int)$value;
            }
            $load[$i] = $dump;
        }
        echo json_encode(["status" => $status, "data" => $load]);
    }else{  
        echo json_encode(["status" => $status, "data" => array("error" => mysql_error($conn))]);
    }
}

?>