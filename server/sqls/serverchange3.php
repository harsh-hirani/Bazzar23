<?php

include '../conn.php';
try{
    for ($i=1; $i < 35; $i++){
    $sql = "DELIMITER //
    CREATE PROCEDURE ".$stockarray[$i]."()
    BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);
        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM stocklinear_".$stockarray[$i]."
        ORDER BY id ASC
        LIMIT 1;
    
        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM stocklinear_".$stockarray[$i].";
    
        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM stocklinear_".$stockarray[$i]."
        ORDER BY id DESC
        LIMIT 1;
        -- store last id
        SELECT id INTO last_id
        FROM stocklinear_".$stockarray[$i]."
        ORDER BY id DESC
        LIMIT 1;
    
        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;
        -- total volume
        SELECT sum(quantity) into vvvv FROM stocklinear_".$stockarray[$i].";
    
        -- Insert the calculated values into the output_table
        INSERT INTO stock_profile_".$stockarray[$i]." (time, open, high, low, close,volume)
        VALUES (tttt, first_val, max_val, min_val, last_val,vvvv);
    
        -- delete the processed data
    
        DELETE FROM stocklinear_".$stockarray[$i]." WHERE id < last_id;
        -- Commit the transaction
        COMMIT;
    END;
    //
    DELIMITER ;
    ";
    if ((mysqli_query($conn, $sql))) {
        echo "success - ".$stockarray[$i]." 2<br>";
    }else{
        echo "error - ".$stockarray[$i]." 2<br>";
        echo mysqli_error($conn)."<br>";
    }
    }

}catch(Exception $e){
    echo "error - ".$stockarray[$i]." 3<br>";
    echo $e->getMessage()."<br>";
}