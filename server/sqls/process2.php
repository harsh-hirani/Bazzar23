<?php
include '../conn.php';

$sqlDrop = "DROP PROCEDURE IF EXISTS process_all_stocks";
mysqli_query($conn, $sqlDrop);
$sql = "

CREATE PROCEDURE process_all_stocks()
BEGIN
call tcs();
call jfs();
call infosys();
call wipro();
call lic();
call hdfc();
call sbi();
call bajaj();
call yes();
call maruti();
call tatam();
call bajaja();
call bharat();
call sun();
call dr();
call zydus();
call cipla();
call titan();
call page();
call hul();
call tata();
call adani();
call jindal();
call tatas();
call coal();
call adanip();
call amb();
call larsen();
call tatap();
call ultra();
call reliance();
call ongc();
call ioc();
call gail();
end;
";
if (mysqli_query($conn, $sql)) {
    echo "Procedure created successfully<br/>";
    $sql = "
    CREATE EVENT IF NOT EXISTS call_process_all_stocks
    ON SCHEDULE EVERY 1 MINUTE
    DO
    BEGIN
        CALL process_all_stocks();
    END;
    ";
    
    if(mysqli_query($conn, $sql)) {
        echo "Event created successfully";
    }else{
        echo "Error creating event: ". mysqli_error($conn);
    }
}else{
    echo "Error creating procedure: ". mysqli_error($conn);
}