<?php
include '../conn.php';

for ($i = 1; $i < 35; $i++) {
    $procedureName = $stockarray[$i];
    $tableName = "stocklinear_" . $procedureName;
    $outputTableName = "stock_profile_" . $procedureName;

    $sqlDrop = "DROP PROCEDURE IF EXISTS `$procedureName`";
    mysqli_query($conn, $sqlDrop);

    $sqlCreate = "
    CREATE PROCEDURE `$procedureName`()
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
        FROM `$tableName`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `$tableName`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `$tableName`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `$tableName`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `$tableName`;

        -- Insert the calculated values into the output_table
        INSERT INTO `$outputTableName` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `$tableName` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END;
    ";

    if (mysqli_query($conn, $sqlCreate)) {
        echo "success - $procedureName 1<br>";
    } else {
        echo "error - $procedureName 1<br>";
        echo mysqli_error($conn) . "<br>";
    }
}
?>
