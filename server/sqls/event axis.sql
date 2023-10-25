DELIMITER //
CREATE PROCEDURE process_data_and_insert()
BEGIN
    DECLARE first_val INT;
    DECLARE max_val INT;
    DECLARE min_val INT;
    DECLARE last_val INT;
    DECLARE last_id INT;
    DECLARE tttt BIGINT(20);
    DECLARE vvvv BIGINT(20);
    -- Select values from the first row
    SELECT newPrice INTO first_val
    FROM stocklinear_axis
    ORDER BY id ASC
    LIMIT 1;

    -- Select maximum and minimum values
    SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
    FROM stocklinear_axis;

    -- Select values from the last row
    SELECT newPrice INTO last_val
    FROM stocklinear_axis
    ORDER BY id DESC
    LIMIT 1;
    -- store last id
    SELECT id INTO last_id
    FROM stocklinear_axis
    ORDER BY id DESC
    LIMIT 1;

    -- current time
    SELECT UNIX_TIMESTAMP()*1000 INTO tttt;
    -- total volume
    SELECT sum(quantity) into vvvv FROM stocklinear_axis;

    -- Insert the calculated values into the output_table
    INSERT INTO stock_profile_axis (time, open, high, low, close,volume)
    VALUES (tttt, first_val, max_val, min_val, last_val,vvvv);

    -- delete the processed data

    DELETE FROM stocklinear_axis WHERE id < last_id;
    -- Commit the transaction
    COMMIT;
END;
//
DELIMITER ;
