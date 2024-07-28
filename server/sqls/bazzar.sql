-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 02:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazzar`
--
CREATE DATABASE IF NOT EXISTS `bazzar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bazzar`;

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `adani`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `adani` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_adani`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_adani`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_adani`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_adani`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_adani`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_adani` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_adani` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `adanip`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `adanip` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_adanip`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_adanip`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_adanip`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_adanip`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_adanip`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_adanip` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_adanip` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `amb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `amb` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_amb`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_amb`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_amb`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_amb`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_amb`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_amb` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_amb` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `bajaj`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaj` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_bajaj`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_bajaj`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_bajaj`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_bajaj`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_bajaj`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_bajaj` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_bajaj` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `bajaja`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `bajaja` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_bajaja`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_bajaja`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_bajaja`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_bajaja`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_bajaja`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_bajaja` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_bajaja` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `bharat`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `bharat` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_bharat`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_bharat`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_bharat`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_bharat`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_bharat`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_bharat` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_bharat` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `cipla`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `cipla` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_cipla`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_cipla`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_cipla`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_cipla`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_cipla`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_cipla` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_cipla` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `coal`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `coal` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_coal`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_coal`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_coal`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_coal`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_coal`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_coal` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_coal` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `dr`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dr` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_dr`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_dr`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_dr`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_dr`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_dr`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_dr` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_dr` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `gail`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `gail` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_gail`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_gail`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_gail`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_gail`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_gail`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_gail` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_gail` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `hdfc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `hdfc` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_hdfc`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_hdfc`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_hdfc`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_hdfc`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_hdfc`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_hdfc` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_hdfc` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `hul`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `hul` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_hul`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_hul`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_hul`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_hul`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_hul`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_hul` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_hul` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `infosys`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `infosys` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_infosys`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_infosys`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_infosys`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_infosys`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_infosys`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_infosys` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_infosys` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `ioc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ioc` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_ioc`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_ioc`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_ioc`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_ioc`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_ioc`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_ioc` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_ioc` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `jfs`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `jfs` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_jfs`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_jfs`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_jfs`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_jfs`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_jfs`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_jfs` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_jfs` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `jindal`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `jindal` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_jindal`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_jindal`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_jindal`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_jindal`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_jindal`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_jindal` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_jindal` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `larsen`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `larsen` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_larsen`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_larsen`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_larsen`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_larsen`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_larsen`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_larsen` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_larsen` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `lic`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `lic` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_lic`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_lic`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_lic`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_lic`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_lic`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_lic` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_lic` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `maruti`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `maruti` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_maruti`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_maruti`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_maruti`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_maruti`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_maruti`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_maruti` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_maruti` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `ongc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ongc` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_ongc`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_ongc`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_ongc`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_ongc`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_ongc`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_ongc` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_ongc` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `page`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `page` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_page`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_page`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_page`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_page`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_page`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_page` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_page` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `process_all_stocks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `process_all_stocks` ()   BEGIN
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
end$$

DROP PROCEDURE IF EXISTS `reliance`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `reliance` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_reliance`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_reliance`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_reliance`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_reliance`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_reliance`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_reliance` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_reliance` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `sbi`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sbi` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_sbi`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_sbi`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_sbi`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_sbi`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_sbi`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_sbi` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_sbi` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `sun`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sun` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_sun`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_sun`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_sun`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_sun`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_sun`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_sun` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_sun` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `tata`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tata` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_tata`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_tata`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_tata`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_tata`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_tata`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_tata` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_tata` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `tatam`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tatam` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_tatam`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_tatam`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_tatam`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_tatam`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_tatam`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_tatam` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_tatam` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `tatap`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tatap` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_tatap`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_tatap`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_tatap`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_tatap`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_tatap`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_tatap` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_tatap` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `tatas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tatas` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_tatas`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_tatas`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_tatas`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_tatas`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_tatas`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_tatas` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_tatas` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `tcs`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tcs` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_tcs`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_tcs`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_tcs`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_tcs`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_tcs`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_tcs` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_tcs` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `titan`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `titan` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_titan`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_titan`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_titan`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_titan`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_titan`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_titan` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_titan` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `ultra`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ultra` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_ultra`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_ultra`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_ultra`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_ultra`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_ultra`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_ultra` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_ultra` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `wipro`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `wipro` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_wipro`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_wipro`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_wipro`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_wipro`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_wipro`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_wipro` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_wipro` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `yes`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `yes` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_yes`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_yes`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_yes`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_yes`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_yes`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_yes` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_yes` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DROP PROCEDURE IF EXISTS `zydus`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `zydus` ()   BEGIN
        DECLARE first_val FLOAT;
        DECLARE max_val FLOAT;
        DECLARE min_val FLOAT;
        DECLARE last_val INT;
        DECLARE last_id INT;
        DECLARE tttt BIGINT(20);
        DECLARE vvvv BIGINT(20);

        -- Select values from the first row
        SELECT newPrice INTO first_val
        FROM `stocklinear_zydus`
        ORDER BY id ASC
        LIMIT 1;

        -- Select maximum and minimum values
        SELECT MAX(newPrice), MIN(newPrice) INTO max_val, min_val
        FROM `stocklinear_zydus`;

        -- Select values from the last row
        SELECT newPrice INTO last_val
        FROM `stocklinear_zydus`
        ORDER BY id DESC
        LIMIT 1;

        -- store last id
        SELECT id INTO last_id
        FROM `stocklinear_zydus`
        ORDER BY id DESC
        LIMIT 1;

        -- current time
        SELECT UNIX_TIMESTAMP()*1000 INTO tttt;

        -- total volume
        SELECT sum(quantity) INTO vvvv
        FROM `stocklinear_zydus`;

        -- Insert the calculated values into the output_table
        INSERT INTO `stock_profile_zydus` (time, open, high, low, close, volume)
        VALUES (tttt, first_val, max_val, min_val, last_val, vvvv);

        -- delete the processed data
        DELETE FROM `stocklinear_zydus` WHERE id < last_id;

        -- Commit the transaction
        COMMIT;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

DROP TABLE IF EXISTS `codes`;
CREATE TABLE `codes` (
  `id` int(255) NOT NULL,
  `number` varchar(25) NOT NULL,
  `byWhom` varchar(120) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `number`, `byWhom`, `uname`, `date`) VALUES
(1, '9265473576', '0', '0', '0'),
(2, '7777933964', '0', '0', '0'),
(3, '9265950719', '0', '0', '0'),
(4, '7543021134', '0', '0', '0'),
(5, '7359838009', '0', '0', '0'),
(6, '9099765280', '0', '0', '0'),
(7, '9428269000', '0', '0', '0'),
(8, '9909699431', '0', '0', '0'),
(9, '9726263600', '0', '0', '0'),
(10, '7043206010', '0', '0', '0'),
(11, '8732988749', '0', '0', '0'),
(12, '7016018593', '0', '0', '0'),
(13, '9998737090', '0', '0', '0'),
(14, '9265545247', '0', '0', '0'),
(15, '9265851544', '0', '0', '0'),
(16, '9313187764', '0', '0', '0'),
(17, '9426445433', '0', '0', '0'),
(18, '7227846604', '0', '0', '0'),
(19, '9712655309', '0', '0', '0'),
(20, '9723414396', '0', '0', '0'),
(21, '8511268432', '0', '0', '0'),
(22, '7984932842', '0', '0', '0'),
(23, '7046020129', '0', '0', '0'),
(24, '7778079566', '0', '0', '0'),
(25, '6354788974', '0', '0', '0'),
(26, '9920797739', '0', '0', '0'),
(27, '8866381722', '0', '0', '0'),
(28, '9825685511', '0', '0', '0'),
(29, '9106928542', '0', '0', '0'),
(30, '9825406781', '0', '0', '0'),
(31, '9978411071', '0', '0', '0'),
(32, '9974195157', '0', '0', '0'),
(33, '9106352904', '0', '0', '0'),
(34, '7016386880', '0', '0', '0'),
(35, '9974195157', '0', '0', '0'),
(36, '8000880217', '0', '0', '0'),
(37, '8758267026', '0', '0', '0'),
(38, '9157700722', '0', '0', '0'),
(39, '8849644580', '0', '0', '0'),
(40, '6351037798', '0', '0', '0'),
(41, '9427536850', '0', '0', '0'),
(42, '9265091831', '0', '0', '0'),
(43, '9265108149', '0', '0', '0'),
(44, '9429228204', '0', '0', '0'),
(45, '6352823545', '0', '0', '0'),
(46, '9429873365', '0', '0', '0'),
(47, '9106230822', '0', '0', '0'),
(48, '7802817800', '0', '0', '0'),
(49, '9879062209', '0', '0', '0'),
(50, '9316086527', '0', '0', '0'),
(51, '7069916305', '0', '0', '0'),
(52, '7820092466', '0', '0', '0'),
(53, '9974034821', '0', '0', '0'),
(54, '7265809318', '0', '0', '0'),
(55, '7801847788', '0', '0', '0'),
(56, '9586404882', '0', '0', '0'),
(57, '9428781033', '0', '0', '0'),
(58, '6359576711', '0', '0', '0'),
(59, '9638750931', '0', '0', '0'),
(60, '7021534098', '0', '0', '0'),
(61, '8128485538', '0', '0', '0'),
(62, '9313868830', '0', '0', '0'),
(63, '7859929796', '0', '0', '0'),
(64, '9351398644', '0', '0', '0'),
(65, '7990737480', '0', '0', '0'),
(66, '6232656688', '0', '0', '0'),
(67, '7801877777', '0', '0', '0'),
(68, '9998860938', '0', '0', '0'),
(69, '9824301041', '0', '0', '0'),
(70, '6353073977', '0', '0', '0'),
(71, '9879963692', '0', '0', '0'),
(72, '9898717789', '0', '0', '0'),
(73, '8320412491', '0', '0', '0'),
(74, '7984907496', '0', '0', '0'),
(75, '9979229576', '0', '0', '0'),
(76, '8866939139', '0', '0', '0'),
(77, '9510102600', '0', '0', '0'),
(78, '7984830996', '0', '0', '0'),
(79, '9512816425', '0', '0', '0'),
(80, '8401517430', '0', '0', '0'),
(81, '6354366091', '0', '0', '0'),
(82, '9624815333', '0', '0', '0'),
(83, '9512457000', '0', '0', '0'),
(84, '9429729407', '0', '0', '0'),
(85, '8487071837', '0', '0', '0'),
(86, '97374605', '0', '0', '0'),
(87, '7777933964', '0', '0', '0'),
(88, '9054653088', '0', '0', '0'),
(89, '9575278699', '0', '0', '0'),
(90, '9521084089', '0', '0', '0'),
(91, '6354234719', '0', '0', '0'),
(92, '7303662932', '0', '0', '0'),
(93, '9413752399', '0', '0', '0'),
(94, '9462979898', '0', '0', '0'),
(95, '7779033236', '0', '0', '0'),
(96, '9023828009', '0', '0', '0'),
(97, '97374605', '0', '0', '0'),
(98, '7777933964', '0', '0', '0'),
(99, '9054653088', '0', '0', '0'),
(100, '9575278699', '0', '0', '0'),
(101, '9521084089', '0', '0', '0'),
(102, '6354234719', '0', '0', '0'),
(103, '7303662932', '0', '0', '0'),
(104, '9413752399', '0', '0', '0'),
(105, '9462979898', '0', '0', '0'),
(106, '7779033236', '0', '0', '0'),
(107, '9023828009', '0', '0', '0'),
(108, '8780839751', '0', '0', '0'),
(109, '9601551848', '0', '0', '0'),
(110, '6354725814', '0', '0', '0'),
(111, '8866589242', '0', '0', '0'),
(112, '9265961177', '0', '0', '0'),
(113, '9106562620', '0', '0', '0'),
(114, '7041650998', '0', '0', '0'),
(115, '8866744208', '0', '0', '0'),
(116, '7041565655', '0', '0', '0'),
(117, '9662663900', '0', '0', '0'),
(118, '8619221482', '0', '0', '0'),
(119, '7043964580', '0', '0', '0'),
(120, '9925760320', '0', '0', '0'),
(121, '9601185764', '0', '0', '0'),
(122, '9978795554', '0', '0', '0'),
(123, '7778889363', '0', '0', '0'),
(124, '7016224554', '0', '0', '0'),
(125, '9898999440', '0', '0', '0'),
(126, '8155918098', '1', 'Harsh_Hirani', '1722166528876');

-- --------------------------------------------------------

--
-- Table structure for table `harsh_hirani_portfolio`
--

DROP TABLE IF EXISTS `harsh_hirani_portfolio`;
CREATE TABLE `harsh_hirani_portfolio` (
  `id` int(255) NOT NULL,
  `stockId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `value` float NOT NULL,
  `cost` float NOT NULL,
  `pal` float NOT NULL,
  `buyDate` bigint(20) NOT NULL,
  `sellDate` bigint(20) NOT NULL,
  `fixed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harsh_hirani_portfolio`
--

INSERT INTO `harsh_hirani_portfolio` (`id`, `stockId`, `quantity`, `value`, `cost`, `pal`, `buyDate`, `sellDate`, `fixed`) VALUES
(1, 30, 1, 8210, 8210, 0, 1722166611384, 1722166623556, 1),
(2, 34, 111, 120, 120, 0, 1722166901524, 1722166911980, 3),
(3, 1, 5, 3350, 3350, 0, 1722166939076, 1722166945291, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_adani`
--

DROP TABLE IF EXISTS `stocklinear_adani`;
CREATE TABLE `stocklinear_adani` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_adani`
--

INSERT INTO `stocklinear_adani` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 246000, 2259.026849386, 2259.1623991299);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_adanip`
--

DROP TABLE IF EXISTS `stocklinear_adanip`;
CREATE TABLE `stocklinear_adanip` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_adanip`
--

INSERT INTO `stocklinear_adanip` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 276000, 780.93608865687, 780.96732734996);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_amb`
--

DROP TABLE IF EXISTS `stocklinear_amb`;
CREATE TABLE `stocklinear_amb` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_amb`
--

INSERT INTO `stocklinear_amb` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 267000, 418.99289982938, 418.94262671417);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_bajaj`
--

DROP TABLE IF EXISTS `stocklinear_bajaj`;
CREATE TABLE `stocklinear_bajaj` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_bajaj`
--

INSERT INTO `stocklinear_bajaj` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 18000, 7503.3707543585, 7503.6709011945);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_bajaja`
--

DROP TABLE IF EXISTS `stocklinear_bajaja`;
CREATE TABLE `stocklinear_bajaja` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_bajaja`
--

INSERT INTO `stocklinear_bajaja` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 60000, 5365.0580712667, 5365.0580712667);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_bharat`
--

DROP TABLE IF EXISTS `stocklinear_bharat`;
CREATE TABLE `stocklinear_bharat` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_bharat`
--

INSERT INTO `stocklinear_bharat` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 222000, 1020.3563449176, 1020.29512721);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_cipla`
--

DROP TABLE IF EXISTS `stocklinear_cipla`;
CREATE TABLE `stocklinear_cipla` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_cipla`
--

INSERT INTO `stocklinear_cipla` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 171000, 1169.3675811167, 1169.2506560511);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_coal`
--

DROP TABLE IF EXISTS `stocklinear_coal`;
CREATE TABLE `stocklinear_coal` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_coal`
--

INSERT INTO `stocklinear_coal` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 219000, 310.26957117072, 310.23854731599);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_dr`
--

DROP TABLE IF EXISTS `stocklinear_dr`;
CREATE TABLE `stocklinear_dr` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_dr`
--

INSERT INTO `stocklinear_dr` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 291000, 5395.4623640505, 5395.4623640505);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_gail`
--

DROP TABLE IF EXISTS `stocklinear_gail`;
CREATE TABLE `stocklinear_gail` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_gail`
--

INSERT INTO `stocklinear_gail` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 165000, 119.95912136829, 119.96511962427);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_hdfc`
--

DROP TABLE IF EXISTS `stocklinear_hdfc`;
CREATE TABLE `stocklinear_hdfc` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_hdfc`
--

INSERT INTO `stocklinear_hdfc` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 234000, 1470.0430475982, 1469.9989476298);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_hul`
--

DROP TABLE IF EXISTS `stocklinear_hul`;
CREATE TABLE `stocklinear_hul` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_hul`
--

INSERT INTO `stocklinear_hul` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 225000, 2478.362136026, 2478.659575175);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_infosys`
--

DROP TABLE IF EXISTS `stocklinear_infosys`;
CREATE TABLE `stocklinear_infosys` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_infosys`
--

INSERT INTO `stocklinear_infosys` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 45000, 1381.2829685424, 1381.3105947543);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_ioc`
--

DROP TABLE IF EXISTS `stocklinear_ioc`;
CREATE TABLE `stocklinear_ioc` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_ioc`
--

INSERT INTO `stocklinear_ioc` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 222000, 90.281177457264, 90.268539861683);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_jfs`
--

DROP TABLE IF EXISTS `stocklinear_jfs`;
CREATE TABLE `stocklinear_jfs` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_jfs`
--

INSERT INTO `stocklinear_jfs` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 27000, 1258.3620847202, 1258.4375909757);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_jindal`
--

DROP TABLE IF EXISTS `stocklinear_jindal`;
CREATE TABLE `stocklinear_jindal` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_jindal`
--

INSERT INTO `stocklinear_jindal` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 24000, 638.55474827515, 638.64415845733);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_larsen`
--

DROP TABLE IF EXISTS `stocklinear_larsen`;
CREATE TABLE `stocklinear_larsen` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_larsen`
--

INSERT INTO `stocklinear_larsen` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 90000, 2894.8405311765, 2894.4353102331);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_lic`
--

DROP TABLE IF EXISTS `stocklinear_lic`;
CREATE TABLE `stocklinear_lic` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_lic`
--

INSERT INTO `stocklinear_lic` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 75000, 599.61572404558, 599.6097279483);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_maruti`
--

DROP TABLE IF EXISTS `stocklinear_maruti`;
CREATE TABLE `stocklinear_maruti` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_maruti`
--

INSERT INTO `stocklinear_maruti` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 9000, 10555.768997477, 10555.874556223);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_ongc`
--

DROP TABLE IF EXISTS `stocklinear_ongc`;
CREATE TABLE `stocklinear_ongc` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_ongc`
--

INSERT INTO `stocklinear_ongc` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 243000, 179.54504410286, 179.55761313578);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_page`
--

DROP TABLE IF EXISTS `stocklinear_page`;
CREATE TABLE `stocklinear_page` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_page`
--

INSERT INTO `stocklinear_page` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 273000, 37552.361278518, 37554.614555391);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_reliance`
--

DROP TABLE IF EXISTS `stocklinear_reliance`;
CREATE TABLE `stocklinear_reliance` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_reliance`
--

INSERT INTO `stocklinear_reliance` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 195000, 2270.2252821216, 2270.1117765328);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_sbi`
--

DROP TABLE IF EXISTS `stocklinear_sbi`;
CREATE TABLE `stocklinear_sbi` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_sbi`
--

INSERT INTO `stocklinear_sbi` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 21000, 559.21612834543, 559.17698595641);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_sun`
--

DROP TABLE IF EXISTS `stocklinear_sun`;
CREATE TABLE `stocklinear_sun` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_sun`
--

INSERT INTO `stocklinear_sun` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 207000, 1110.1546454296, 1110.3211936086);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_tata`
--

DROP TABLE IF EXISTS `stocklinear_tata`;
CREATE TABLE `stocklinear_tata` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_tata`
--

INSERT INTO `stocklinear_tata` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 150000, 889.9103212665, 889.83913413577);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_tatam`
--

DROP TABLE IF EXISTS `stocklinear_tatam`;
CREATE TABLE `stocklinear_tatam` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_tatam`
--

INSERT INTO `stocklinear_tatam` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 252000, 640.06357685425, 640.07637838182);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_tatap`
--

DROP TABLE IF EXISTS `stocklinear_tatap`;
CREATE TABLE `stocklinear_tatap` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_tatap`
--

INSERT INTO `stocklinear_tatap` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 51000, 240.15107774378, 240.13907079024);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_tatas`
--

DROP TABLE IF EXISTS `stocklinear_tatas`;
CREATE TABLE `stocklinear_tatas` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_tatas`
--

INSERT INTO `stocklinear_tatas` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 120000, 120.01312190726, 120.01312190726);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_tcs`
--

DROP TABLE IF EXISTS `stocklinear_tcs`;
CREATE TABLE `stocklinear_tcs` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_tcs`
--

INSERT INTO `stocklinear_tcs` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 249000, 3662.340801609, 3662.4506751293);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_titan`
--

DROP TABLE IF EXISTS `stocklinear_titan`;
CREATE TABLE `stocklinear_titan` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_titan`
--

INSERT INTO `stocklinear_titan` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 258000, 3116.9104379726, 3116.5364535982);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_ultra`
--

DROP TABLE IF EXISTS `stocklinear_ultra`;
CREATE TABLE `stocklinear_ultra` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_ultra`
--

INSERT INTO `stocklinear_ultra` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 198000, 8216.7286283039, 8216.7286283039);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_wipro`
--

DROP TABLE IF EXISTS `stocklinear_wipro`;
CREATE TABLE `stocklinear_wipro` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_wipro`
--

INSERT INTO `stocklinear_wipro` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 90000, 380.18216054663, 380.12894249468);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_yes`
--

DROP TABLE IF EXISTS `stocklinear_yes`;
CREATE TABLE `stocklinear_yes` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_yes`
--

INSERT INTO `stocklinear_yes` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 57000, 14.997739308161, 14.996689539893);

-- --------------------------------------------------------

--
-- Table structure for table `stocklinear_zydus`
--

DROP TABLE IF EXISTS `stocklinear_zydus`;
CREATE TABLE `stocklinear_zydus` (
  `id` int(255) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `buyOrSell` int(2) NOT NULL COMMENT 'buy = 0\r\nsell = 1',
  `quantity` int(200) NOT NULL,
  `newPrice` double NOT NULL,
  `beforePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocklinear_zydus`
--

INSERT INTO `stocklinear_zydus` (`id`, `datetime`, `buyOrSell`, `quantity`, `newPrice`, `beforePrice`) VALUES
(219, 10, 0, 66000, 570.00526827813, 569.98816863307);

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

DROP TABLE IF EXISTS `stock_list`;
CREATE TABLE `stock_list` (
  `id` int(11) NOT NULL,
  `stock_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `stock_name`) VALUES
(1, 'tcs'),
(2, 'jfs'),
(3, 'infosys'),
(4, 'wipro'),
(5, 'lic'),
(6, 'hdfc'),
(7, 'sbi'),
(8, 'bajaj'),
(9, 'yes'),
(10, 'maruti'),
(11, 'tatam'),
(12, 'bajaja'),
(13, 'bharat'),
(14, 'sun'),
(15, 'dr'),
(16, 'zydus'),
(17, 'cipla'),
(18, 'titan'),
(19, 'page'),
(20, 'hul'),
(21, 'tata'),
(22, 'adani'),
(23, 'jindal'),
(24, 'tatas'),
(25, 'coal'),
(26, 'adanip'),
(27, 'amb'),
(28, 'larsen'),
(29, 'tatap'),
(30, 'ultra'),
(31, 'reliance'),
(32, 'ongc'),
(33, 'ioc'),
(34, 'gail');

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_adani`
--

DROP TABLE IF EXISTS `stock_profile_adani`;
CREATE TABLE `stock_profile_adani` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_adani`
--

INSERT INTO `stock_profile_adani` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 2260, 2260, 2260, 2260, 0),
(2, 1722169059000, 2260, 2260, 2260, 2260, 0),
(3, 1722169119000, 2260, 2260, 2260, 2260, 0),
(4, 1722169179000, 2260, 2260, 2260, 2260, 0),
(5, 1722169239000, 2260, 2260, 2260, 2260, 0),
(6, 1722169299000, 2260, 2260, 2260, 2260, 0),
(7, 1722169359000, 2260, 2260.25, 2259.12, 2260, 5346000),
(8, 1722169419000, 2259.59, 2261.4, 2258.69, 2261, 10320000),
(9, 1722169479000, 2261.06, 2261.4, 2260.25, 2261, 9381000),
(10, 1722169539000, 2260.77, 2260.95, 2259.43, 2260, 4593000),
(11, 1722169599000, 2259.7, 2259.7, 2259.48, 2259, 594000),
(12, 1722169659000, 2259.48, 2259.48, 2259.03, 2259, 435000),
(13, 1722169719000, 2259.03, 2259.03, 2259.03, 2259, 246000),
(14, 1722169779000, 2259.03, 2259.03, 2259.03, 2259, 246000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_adanip`
--

DROP TABLE IF EXISTS `stock_profile_adanip`;
CREATE TABLE `stock_profile_adanip` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_adanip`
--

INSERT INTO `stock_profile_adanip` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 780, 780, 780, 780, 0),
(2, 1722169059000, 780, 780, 780, 780, 0),
(3, 1722169119000, 780, 780, 780, 780, 0),
(4, 1722169179000, 780, 780, 780, 780, 0),
(5, 1722169239000, 780, 780, 780, 780, 0),
(6, 1722169299000, 780, 780, 780, 780, 0),
(7, 1722169359000, 780, 780.421, 779.914, 780, 6873000),
(8, 1722169419000, 780.078, 780.616, 780.008, 781, 9570000),
(9, 1722169479000, 780.585, 780.866, 780.288, 781, 8730000),
(10, 1722169539000, 780.647, 780.858, 780.538, 781, 4074000),
(11, 1722169599000, 780.858, 780.975, 780.858, 781, 519000),
(12, 1722169659000, 780.928, 780.967, 780.928, 781, 504000),
(13, 1722169719000, 780.936, 780.936, 780.936, 781, 276000),
(14, 1722169779000, 780.936, 780.936, 780.936, 781, 276000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_amb`
--

DROP TABLE IF EXISTS `stock_profile_amb`;
CREATE TABLE `stock_profile_amb` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_amb`
--

INSERT INTO `stock_profile_amb` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 420, 420, 420, 420, 0),
(2, 1722169059000, 420, 420, 420, 420, 0),
(3, 1722169119000, 420, 420, 420, 420, 0),
(4, 1722169179000, 420, 420, 420, 420, 0),
(5, 1722169239000, 420, 420, 420, 420, 0),
(6, 1722169299000, 420, 420, 420, 420, 0),
(7, 1722169359000, 420, 420.206, 419.857, 420, 5295000),
(8, 1722169419000, 419.857, 419.861, 419.253, 419, 10008000),
(9, 1722169479000, 419.416, 419.484, 419.119, 419, 10536000),
(10, 1722169539000, 419.295, 419.295, 418.976, 419, 4026000),
(11, 1722169599000, 418.989, 418.989, 418.863, 419, 516000),
(12, 1722169659000, 418.884, 418.993, 418.884, 419, 672000),
(13, 1722169719000, 418.993, 418.993, 418.993, 419, 267000),
(14, 1722169779000, 418.993, 418.993, 418.993, 419, 267000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_bajaj`
--

DROP TABLE IF EXISTS `stock_profile_bajaj`;
CREATE TABLE `stock_profile_bajaj` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_bajaj`
--

INSERT INTO `stock_profile_bajaj` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 7500, 7500, 7500, 7500, 0),
(2, 1722169059000, 7500, 7500, 7500, 7500, 0),
(3, 1722169119000, 7500, 7500, 7500, 7500, 0),
(4, 1722169179000, 7500, 7500, 7500, 7500, 0),
(5, 1722169239000, 7500, 7500, 7500, 7500, 0),
(6, 1722169299000, 7500, 7500, 7500, 7500, 0),
(7, 1722169359000, 7500, 7503.75, 7497.97509765625, 7503, 5748000),
(8, 1722169419000, 7503.14990234375, 7503.900390625, 7496.2490234375, 7500, 8751000),
(9, 1722169479000, 7500.22265625, 7506.97509765625, 7500.07275390625, 7504, 7854000),
(10, 1722169539000, 7504.34716796875, 7504.4970703125, 7500.8203125, 7503, 3732000),
(11, 1722169599000, 7502.62060546875, 7503.14599609375, 7502.3203125, 7503, 627000),
(12, 1722169659000, 7502.99560546875, 7503.6708984375, 7502.99560546875, 7503, 117000),
(13, 1722169719000, 7503.37060546875, 7503.37060546875, 7503.37060546875, 7503, 18000),
(14, 1722169779000, 7503.37060546875, 7503.37060546875, 7503.37060546875, 7503, 18000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_bajaja`
--

DROP TABLE IF EXISTS `stock_profile_bajaja`;
CREATE TABLE `stock_profile_bajaja` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_bajaja`
--

INSERT INTO `stock_profile_bajaja` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 5370, 5370, 5370, 5370, 0),
(2, 1722169059000, 5370, 5370, 5370, 5370, 0),
(3, 1722169119000, 5370, 5370, 5370, 5370, 0),
(4, 1722169179000, 5370, 5370, 5370, 5370, 0),
(5, 1722169239000, 5370, 5370, 5370, 5370, 0),
(6, 1722169299000, 5370, 5370, 5370, 5370, 0),
(7, 1722169359000, 5370, 5370.3759765625, 5367.63720703125, 5370, 5967000),
(8, 1722169419000, 5370.375, 5370.375, 5365.22119140625, 5369, 9480000),
(9, 1722169479000, 5369.138671875, 5369.138671875, 5365.86376953125, 5369, 9093000),
(10, 1722169539000, 5368.9765625, 5369.24462890625, 5365.16552734375, 5366, 3807000),
(11, 1722169599000, 5365.755859375, 5366.5068359375, 5365.326171875, 5365, 738000),
(12, 1722169659000, 5365.326171875, 5365.326171875, 5365.05810546875, 5365, 252000),
(13, 1722169719000, 5365.05810546875, 5365.05810546875, 5365.05810546875, 5365, 60000),
(14, 1722169779000, 5365.05810546875, 5365.05810546875, 5365.05810546875, 5365, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_bharat`
--

DROP TABLE IF EXISTS `stock_profile_bharat`;
CREATE TABLE `stock_profile_bharat` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_bharat`
--

INSERT INTO `stock_profile_bharat` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 1020, 1020, 1020, 1020, 0),
(2, 1722169059000, 1020, 1020, 1020, 1020, 0),
(3, 1722169119000, 1020, 1020, 1020, 1020, 0),
(4, 1722169179000, 1020, 1020, 1020, 1020, 0),
(5, 1722169239000, 1020, 1020, 1020, 1020, 0),
(6, 1722169299000, 1020, 1020, 1020, 1020, 0),
(7, 1722169359000, 1020, 1020, 1019.0721435546875, 1019, 4944000),
(8, 1722169419000, 1019.1740112304688, 1020.6322021484375, 1019.1740112304688, 1020, 9015000),
(9, 1722169479000, 1020.3668823242188, 1020.6116333007812, 1019.4386596679688, 1020, 9312000),
(10, 1722169539000, 1020.0095825195312, 1020.3870239257812, 1019.9177856445312, 1020, 4092000),
(11, 1722169599000, 1020.2135009765625, 1020.2135009765625, 1020.101318359375, 1020, 741000),
(12, 1722169659000, 1020.2135009765625, 1020.3563232421875, 1020.2135009765625, 1020, 564000),
(13, 1722169719000, 1020.3563232421875, 1020.3563232421875, 1020.3563232421875, 1020, 222000),
(14, 1722169779000, 1020.3563232421875, 1020.3563232421875, 1020.3563232421875, 1020, 222000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_cipla`
--

DROP TABLE IF EXISTS `stock_profile_cipla`;
CREATE TABLE `stock_profile_cipla` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_cipla`
--

INSERT INTO `stock_profile_cipla` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 1170, 1170, 1170, 1170, 0),
(2, 1722169059000, 1170, 1170, 1170, 1170, 0),
(3, 1722169119000, 1170, 1170, 1170, 1170, 0),
(4, 1722169179000, 1170, 1170, 1170, 1170, 0),
(5, 1722169239000, 1170, 1170, 1170, 1170, 0),
(6, 1722169299000, 1170, 1170, 1170, 1170, 0),
(7, 1722169359000, 1170, 1170.4329833984375, 1169.8243408203125, 1170, 4524000),
(8, 1722169419000, 1170.1285400390625, 1171.0765380859375, 1170.0699462890625, 1171, 10470000),
(9, 1722169479000, 1170.7603759765625, 1170.7603759765625, 1169.2041015625, 1170, 9195000),
(10, 1722169539000, 1169.6134033203125, 1169.7535400390625, 1169.052001953125, 1170, 3336000),
(11, 1722169599000, 1169.5196533203125, 1169.5196533203125, 1169.1337890625, 1169, 792000),
(12, 1722169659000, 1169.1337890625, 1169.3675537109375, 1169.1337890625, 1169, 531000),
(13, 1722169719000, 1169.3675537109375, 1169.3675537109375, 1169.3675537109375, 1169, 171000),
(14, 1722169779000, 1169.3675537109375, 1169.3675537109375, 1169.3675537109375, 1169, 171000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_coal`
--

DROP TABLE IF EXISTS `stock_profile_coal`;
CREATE TABLE `stock_profile_coal` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_coal`
--

INSERT INTO `stock_profile_coal` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 310, 310, 310, 310, 0),
(2, 1722169059000, 310, 310, 310, 310, 0),
(3, 1722169119000, 310, 310, 310, 310, 0),
(4, 1722169179000, 310, 310, 310, 310, 0),
(5, 1722169239000, 310, 310, 310, 310, 0),
(6, 1722169299000, 310, 310, 310, 310, 0),
(7, 1722169359000, 310, 310.124, 309.969, 310, 5709000),
(8, 1722169419000, 310.031, 310.062, 309.591, 310, 8265000),
(9, 1722169479000, 309.833, 310.26, 309.833, 310, 9282000),
(10, 1722169539000, 310.254, 310.298, 310.13, 310, 3390000),
(11, 1722169599000, 310.229, 310.257, 310.211, 310, 384000),
(12, 1722169659000, 310.211, 310.27, 310.211, 310, 651000),
(13, 1722169719000, 310.27, 310.27, 310.27, 310, 219000),
(14, 1722169779000, 310.27, 310.27, 310.27, 310, 219000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_dr`
--

DROP TABLE IF EXISTS `stock_profile_dr`;
CREATE TABLE `stock_profile_dr` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_dr`
--

INSERT INTO `stock_profile_dr` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 5400, 5400, 5400, 5400, 0),
(2, 1722169059000, 5400, 5400, 5400, 5400, 0),
(3, 1722169119000, 5400, 5400, 5400, 5400, 0),
(4, 1722169179000, 5400, 5400, 5400, 5400, 0),
(5, 1722169239000, 5400, 5400, 5400, 5400, 0),
(6, 1722169299000, 5400, 5400, 5400, 5400, 0),
(7, 1722169359000, 5400, 5401.349609375, 5396.8681640625, 5397, 5493000),
(8, 1722169419000, 5397.4619140625, 5398.75732421875, 5394.27734375, 5394, 9576000),
(9, 1722169479000, 5394.43896484375, 5395.6796875, 5392.119140625, 5393, 9117000),
(10, 1722169539000, 5392.60400390625, 5394.32958984375, 5390.6630859375, 5394, 3576000),
(11, 1722169599000, 5393.84423828125, 5395.138671875, 5393.84423828125, 5395, 243000),
(12, 1722169659000, 5395.138671875, 5395.46240234375, 5395.138671875, 5395, 390000),
(13, 1722169719000, 5395.46240234375, 5395.46240234375, 5395.46240234375, 5395, 291000),
(14, 1722169779000, 5395.46240234375, 5395.46240234375, 5395.46240234375, 5395, 291000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_gail`
--

DROP TABLE IF EXISTS `stock_profile_gail`;
CREATE TABLE `stock_profile_gail` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_gail`
--

INSERT INTO `stock_profile_gail` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722166851000, 120, 120, 120, 120, 0),
(2, 1722166871000, 120, 120, 120, 120, 0),
(3, 1722168573000, 120, 120, 120, 120, 0),
(4, 1722169059000, 120, 120, 120, 120, 0),
(5, 1722169119000, 120, 120, 120, 120, 0),
(6, 1722169179000, 120, 120, 120, 120, 0),
(7, 1722169239000, 120, 120, 120, 120, 0),
(8, 1722169299000, 120, 120, 120, 120, 0),
(9, 1722169359000, 120, 120.014, 119.95, 120, 5997000),
(10, 1722169419000, 119.989, 120.007, 119.917, 120, 8481000),
(11, 1722169479000, 119.917, 120.017, 119.897, 120, 10281000),
(12, 1722169539000, 119.988, 119.988, 119.945, 120, 4113000),
(13, 1722169599000, 119.965, 119.966, 119.958, 120, 693000),
(14, 1722169659000, 119.958, 119.965, 119.958, 120, 576000),
(15, 1722169719000, 119.959, 119.959, 119.959, 120, 165000),
(16, 1722169779000, 119.959, 119.959, 119.959, 120, 165000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_hdfc`
--

DROP TABLE IF EXISTS `stock_profile_hdfc`;
CREATE TABLE `stock_profile_hdfc` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_hdfc`
--

INSERT INTO `stock_profile_hdfc` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 1470, 1470, 1470, 1470, 0),
(2, 1722169059000, 1470, 1470, 1470, 1470, 0),
(3, 1722169119000, 1470, 1470, 1470, 1470, 0),
(4, 1722169179000, 1470, 1470, 1470, 1470, 0),
(5, 1722169239000, 1470, 1470, 1470, 1470, 0),
(6, 1722169299000, 1470, 1470, 1470, 1470, 0),
(7, 1722169359000, 1470, 1470.396728515625, 1469.3238525390625, 1470, 5274000),
(8, 1722169419000, 1470.396728515625, 1471.646728515625, 1470.264404296875, 1471, 9627000),
(9, 1722169479000, 1471.3671875, 1471.6319580078125, 1469.749267578125, 1470, 9003000),
(10, 1722169539000, 1470.043212890625, 1470.043212890625, 1469.1907958984375, 1469, 4308000),
(11, 1722169599000, 1469.4552001953125, 1470.013671875, 1469.4552001953125, 1470, 288000),
(12, 1722169659000, 1470.013671875, 1470.0430908203125, 1469.9989013671875, 1470, 441000),
(13, 1722169719000, 1470.0430908203125, 1470.0430908203125, 1470.0430908203125, 1470, 234000),
(14, 1722169779000, 1470.0430908203125, 1470.0430908203125, 1470.0430908203125, 1470, 234000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_hul`
--

DROP TABLE IF EXISTS `stock_profile_hul`;
CREATE TABLE `stock_profile_hul` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_hul`
--

INSERT INTO `stock_profile_hul` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 2480, 2480, 2480, 2480, 0),
(2, 1722169059000, 2480, 2480, 2480, 2480, 0),
(3, 1722169119000, 2480, 2480, 2480, 2480, 0),
(4, 1722169179000, 2480, 2480, 2480, 2480, 0),
(5, 1722169239000, 2480, 2480, 2480, 2480, 0),
(6, 1722169299000, 2480, 2480, 2480, 2480, 0),
(7, 1722169359000, 2480, 2480.5, 2478.96, 2479, 4977000),
(8, 1722169419000, 2478.96, 2479.58, 2477.35, 2478, 9273000),
(9, 1722169479000, 2477.64, 2479.5, 2476.5, 2479, 8214000),
(10, 1722169539000, 2479.23, 2480.79, 2479.23, 2479, 4743000),
(11, 1722169599000, 2479.33, 2479.33, 2479.01, 2479, 582000),
(12, 1722169659000, 2479.01, 2479.01, 2478.36, 2478, 693000),
(13, 1722169719000, 2478.36, 2478.36, 2478.36, 2478, 225000),
(14, 1722169779000, 2478.36, 2478.36, 2478.36, 2478, 225000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_infosys`
--

DROP TABLE IF EXISTS `stock_profile_infosys`;
CREATE TABLE `stock_profile_infosys` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_infosys`
--

INSERT INTO `stock_profile_infosys` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 1380, 1380, 1380, 1380, 0),
(2, 1722169059000, 1380, 1380, 1380, 1380, 0),
(3, 1722169119000, 1380, 1380, 1380, 1380, 0),
(4, 1722169179000, 1380, 1380, 1380, 1380, 0),
(5, 1722169239000, 1380, 1380, 1380, 1380, 0),
(6, 1722169299000, 1380, 1380, 1380, 1380, 0),
(7, 1722169359000, 1380, 1380.634765625, 1379.116943359375, 1381, 5202000),
(8, 1722169419000, 1380.607177734375, 1381.1180419921875, 1379.640869140625, 1381, 8895000),
(9, 1722169479000, 1380.648193359375, 1382.1951904296875, 1380.52392578125, 1382, 9141000),
(10, 1722169539000, 1381.98779296875, 1382.3470458984375, 1381.2691650390625, 1381, 3807000),
(11, 1722169599000, 1381.2691650390625, 1381.4349365234375, 1381.2691650390625, 1381, 549000),
(12, 1722169659000, 1381.4349365234375, 1381.4349365234375, 1381.282958984375, 1381, 450000),
(13, 1722169719000, 1381.282958984375, 1381.282958984375, 1381.282958984375, 1381, 45000),
(14, 1722169779000, 1381.282958984375, 1381.282958984375, 1381.282958984375, 1381, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_ioc`
--

DROP TABLE IF EXISTS `stock_profile_ioc`;
CREATE TABLE `stock_profile_ioc` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_ioc`
--

INSERT INTO `stock_profile_ioc` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 90, 90, 90, 90, 0),
(2, 1722169059000, 90, 90, 90, 90, 0),
(3, 1722169119000, 90, 90, 90, 90, 0),
(4, 1722169179000, 90, 90, 90, 90, 0),
(5, 1722169239000, 90, 90, 90, 90, 0),
(6, 1722169299000, 90, 90, 90, 90, 0),
(7, 1722169359000, 90, 90.0891, 90, 90, 4491000),
(8, 1722169419000, 90.0891, 90.1171, 90.0522, 90, 8526000),
(9, 1722169479000, 90.1116, 90.3173, 90.108, 90, 8814000),
(10, 1722169539000, 90.3173, 90.3209, 90.2397, 90, 3660000),
(11, 1722169599000, 90.2676, 90.2676, 90.2595, 90, 696000),
(12, 1722169659000, 90.2649, 90.2812, 90.2649, 90, 525000),
(13, 1722169719000, 90.2812, 90.2812, 90.2812, 90, 222000),
(14, 1722169779000, 90.2812, 90.2812, 90.2812, 90, 222000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_jfs`
--

DROP TABLE IF EXISTS `stock_profile_jfs`;
CREATE TABLE `stock_profile_jfs` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_jfs`
--

INSERT INTO `stock_profile_jfs` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 1260, 1260, 1260, 1260, 0),
(2, 1722169059000, 1260, 1260, 1260, 1260, 0),
(3, 1722169119000, 1260, 1260, 1260, 1260, 0),
(4, 1722169179000, 1260, 1260, 1260, 1260, 0),
(5, 1722169239000, 1260, 1260, 1260, 1260, 0),
(6, 1722169299000, 1260, 1260, 1260, 1260, 0),
(7, 1722169359000, 1260, 1260.3653564453125, 1259.6219482421875, 1260, 5394000),
(8, 1722169419000, 1259.6219482421875, 1259.7603759765625, 1258.048095703125, 1259, 9456000),
(9, 1722169479000, 1258.9541015625, 1259.01708984375, 1257.1673583984375, 1257, 9882000),
(10, 1722169539000, 1257.3936767578125, 1258.097900390625, 1257.35595703125, 1258, 3381000),
(11, 1722169599000, 1258.097900390625, 1258.3997802734375, 1258.097900390625, 1258, 606000),
(12, 1722169659000, 1258.3997802734375, 1258.4376220703125, 1258.362060546875, 1258, 438000),
(13, 1722169719000, 1258.362060546875, 1258.362060546875, 1258.362060546875, 1258, 27000),
(14, 1722169779000, 1258.362060546875, 1258.362060546875, 1258.362060546875, 1258, 27000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_jindal`
--

DROP TABLE IF EXISTS `stock_profile_jindal`;
CREATE TABLE `stock_profile_jindal` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_jindal`
--

INSERT INTO `stock_profile_jindal` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 640, 640, 640, 640, 0),
(2, 1722169059000, 640, 640, 640, 640, 0),
(3, 1722169119000, 640, 640, 640, 640, 0),
(4, 1722169179000, 640, 640, 640, 640, 0),
(5, 1722169239000, 640, 640, 640, 640, 0),
(6, 1722169299000, 640, 640, 640, 640, 0),
(7, 1722169359000, 640, 640.186, 639.917, 640, 5802000),
(8, 1722169419000, 640.128, 640.192, 639.475, 639, 9060000),
(9, 1722169479000, 639.475, 639.488, 638.881, 639, 8262000),
(10, 1722169539000, 638.887, 638.976, 638.58, 639, 3636000),
(11, 1722169599000, 638.58, 638.58, 638.536, 639, 423000),
(12, 1722169659000, 638.574, 638.644, 638.555, 639, 474000),
(13, 1722169719000, 638.555, 638.555, 638.555, 639, 24000),
(14, 1722169779000, 638.555, 638.555, 638.555, 639, 24000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_larsen`
--

DROP TABLE IF EXISTS `stock_profile_larsen`;
CREATE TABLE `stock_profile_larsen` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_larsen`
--

INSERT INTO `stock_profile_larsen` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 2900, 2900, 2900, 2900, 0),
(2, 1722169059000, 2900, 2900, 2900, 2900, 0),
(3, 1722169119000, 2900, 2900, 2900, 2900, 0),
(4, 1722169179000, 2900, 2900, 2900, 2900, 0),
(5, 1722169239000, 2900, 2900, 2900, 2900, 0),
(6, 1722169299000, 2900, 2900, 2900, 2900, 0),
(7, 1722169359000, 2900, 2900, 2896.7, 2898, 5694000),
(8, 1722169419000, 2897.54, 2899.16, 2896.96, 2897, 9501000),
(9, 1722169479000, 2897.27, 2897.27, 2894.52, 2895, 8787000),
(10, 1722169539000, 2895.3, 2896.2, 2895.07, 2895, 4281000),
(11, 1722169599000, 2895.36, 2895.36, 2894.55, 2895, 717000),
(12, 1722169659000, 2894.61, 2894.84, 2894.44, 2895, 363000),
(13, 1722169719000, 2894.84, 2894.84, 2894.84, 2895, 90000),
(14, 1722169779000, 2894.84, 2894.84, 2894.84, 2895, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_lic`
--

DROP TABLE IF EXISTS `stock_profile_lic`;
CREATE TABLE `stock_profile_lic` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_lic`
--

INSERT INTO `stock_profile_lic` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 600, 600, 600, 600, 0),
(2, 1722169059000, 600, 600, 600, 600, 0),
(3, 1722169119000, 600, 600, 600, 600, 0),
(4, 1722169179000, 600, 600, 600, 600, 0),
(5, 1722169239000, 600, 600, 600, 600, 0),
(6, 1722169299000, 600, 600, 600, 600, 0),
(7, 1722169359000, 600, 600.1920166015625, 599.5860595703125, 600, 5730000),
(8, 1722169419000, 599.77197265625, 600.3659057617188, 599.573974609375, 600, 8955000),
(9, 1722169479000, 600.1257934570312, 600.40185546875, 599.5678100585938, 600, 9753000),
(10, 1722169539000, 599.5977783203125, 599.6876831054688, 599.3759765625, 599, 3357000),
(11, 1722169599000, 599.4898071289062, 599.61572265625, 599.4898071289062, 600, 732000),
(12, 1722169659000, 599.61572265625, 599.61572265625, 599.6097412109375, 600, 621000),
(13, 1722169719000, 599.61572265625, 599.61572265625, 599.61572265625, 600, 75000),
(14, 1722169779000, 599.61572265625, 599.61572265625, 599.61572265625, 600, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_maruti`
--

DROP TABLE IF EXISTS `stock_profile_maruti`;
CREATE TABLE `stock_profile_maruti` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_maruti`
--

INSERT INTO `stock_profile_maruti` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 10560, 10560, 10560, 10560, 0),
(2, 1722169059000, 10560, 10560, 10560, 10560, 0),
(3, 1722169119000, 10560, 10560, 10560, 10560, 0),
(4, 1722169179000, 10560, 10560, 10560, 10560, 0),
(5, 1722169239000, 10560, 10560, 10560, 10560, 0),
(6, 1722169299000, 10560, 10560, 10560, 10560, 0),
(7, 1722169359000, 10560, 10568.02734375, 10560, 10566, 6537000),
(8, 1722169419000, 10566.3359375, 10569.400390625, 10557.7783203125, 10558, 9243000),
(9, 1722169479000, 10557.7783203125, 10563.1630859375, 10553.5556640625, 10557, 9162000),
(10, 1722169539000, 10557.037109375, 10560.2041015625, 10556.1923828125, 10557, 4569000),
(11, 1722169599000, 10557.1416015625, 10557.7744140625, 10556.19140625, 10556, 489000),
(12, 1722169659000, 10556.19140625, 10556.19140625, 10555.7685546875, 10556, 453000),
(13, 1722169719000, 10555.7685546875, 10555.7685546875, 10555.7685546875, 10556, 9000),
(14, 1722169779000, 10555.7685546875, 10555.7685546875, 10555.7685546875, 10556, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_ongc`
--

DROP TABLE IF EXISTS `stock_profile_ongc`;
CREATE TABLE `stock_profile_ongc` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_ongc`
--

INSERT INTO `stock_profile_ongc` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 180, 180, 180, 180, 0),
(2, 1722169059000, 180, 180, 180, 180, 0),
(3, 1722169119000, 180, 180, 180, 180, 0),
(4, 1722169179000, 180, 180, 180, 180, 0),
(5, 1722169239000, 180, 180, 180, 180, 0),
(6, 1722169299000, 180, 180, 180, 180, 0),
(7, 1722169359000, 180, 180, 179.766, 180, 5424000),
(8, 1722169419000, 179.766, 179.788, 179.556, 180, 9354000),
(9, 1722169479000, 179.568, 179.568, 179.393, 179, 9399000),
(10, 1722169539000, 179.498, 179.547, 179.461, 180, 3759000),
(11, 1722169599000, 179.54, 179.559, 179.532, 180, 558000),
(12, 1722169659000, 179.558, 179.558, 179.545, 180, 504000),
(13, 1722169719000, 179.545, 179.545, 179.545, 180, 243000),
(14, 1722169779000, 179.545, 179.545, 179.545, 180, 243000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_page`
--

DROP TABLE IF EXISTS `stock_profile_page`;
CREATE TABLE `stock_profile_page` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_page`
--

INSERT INTO `stock_profile_page` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 37540, 37540, 37540, 37540, 0),
(2, 1722169059000, 37540, 37540, 37540, 37540, 0),
(3, 1722169119000, 37540, 37540, 37540, 37540, 0),
(4, 1722169179000, 37540, 37540, 37540, 37540, 0),
(5, 1722169239000, 37540, 37540, 37540, 37540, 0),
(6, 1722169299000, 37540, 37540, 37540, 37540, 0),
(7, 1722169359000, 37540, 37550.1, 37528.4, 37537, 5427000),
(8, 1722169419000, 37536.6, 37566.7, 37529.1, 37546, 9531000),
(9, 1722169479000, 37545.6, 37565.5, 37535.5, 37561, 9867000),
(10, 1722169539000, 37561, 37570, 37551.6, 37556, 4389000),
(11, 1722169599000, 37556.1, 37557.2, 37552.4, 37552, 933000),
(12, 1722169659000, 37552.4, 37554.6, 37552.4, 37552, 786000),
(13, 1722169719000, 37552.4, 37552.4, 37552.4, 37552, 273000),
(14, 1722169779000, 37552.4, 37552.4, 37552.4, 37552, 273000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_reliance`
--

DROP TABLE IF EXISTS `stock_profile_reliance`;
CREATE TABLE `stock_profile_reliance` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_reliance`
--

INSERT INTO `stock_profile_reliance` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 2270, 2270, 2270, 2270, 0),
(2, 1722169059000, 2270, 2270, 2270, 2270, 0),
(3, 1722169119000, 2270, 2270, 2270, 2270, 0),
(4, 1722169179000, 2270, 2270, 2270, 2270, 0),
(5, 1722169239000, 2270, 2270, 2270, 2270, 0),
(6, 1722169299000, 2270, 2270, 2270, 2270, 0),
(7, 1722169359000, 2270, 2270, 2267.84, 2269, 4920000),
(8, 1722169419000, 2268.84, 2270.27, 2268.71, 2269, 7968000),
(9, 1722169479000, 2269.41, 2269.41, 2267.66, 2269, 10332000),
(10, 1722169539000, 2268.91, 2270.45, 2268.89, 2270, 2634000),
(11, 1722169599000, 2270.2, 2270.27, 2270.11, 2270, 771000),
(12, 1722169659000, 2270.11, 2270.23, 2270.11, 2270, 696000),
(13, 1722169719000, 2270.23, 2270.23, 2270.23, 2270, 195000),
(14, 1722169779000, 2270.23, 2270.23, 2270.23, 2270, 195000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_sbi`
--

DROP TABLE IF EXISTS `stock_profile_sbi`;
CREATE TABLE `stock_profile_sbi` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_sbi`
--

INSERT INTO `stock_profile_sbi` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 560, 560, 560, 560, 0),
(2, 1722169059000, 560, 560, 560, 560, 0),
(3, 1722169119000, 560, 560, 560, 560, 0),
(4, 1722169179000, 560, 560, 560, 560, 0),
(5, 1722169239000, 560, 560, 560, 560, 0),
(6, 1722169299000, 560, 560, 560, 560, 0),
(7, 1722169359000, 560, 560, 559.5297241210938, 560, 5613000),
(8, 1722169419000, 559.6304931640625, 559.6304931640625, 559.2778930664062, 559, 7857000),
(9, 1722169479000, 559.3058471679688, 559.5743408203125, 558.8025512695312, 559, 9327000),
(10, 1722169539000, 558.8025512695312, 559.3224487304688, 558.8025512695312, 559, 3432000),
(11, 1722169599000, 559.0763549804688, 559.2608642578125, 559.0763549804688, 559, 471000),
(12, 1722169659000, 559.2608642578125, 559.2608642578125, 559.177001953125, 559, 303000),
(13, 1722169719000, 559.2161254882812, 559.2161254882812, 559.2161254882812, 559, 21000),
(14, 1722169779000, 559.2161254882812, 559.2161254882812, 559.2161254882812, 559, 21000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_sun`
--

DROP TABLE IF EXISTS `stock_profile_sun`;
CREATE TABLE `stock_profile_sun` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_sun`
--

INSERT INTO `stock_profile_sun` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 1110, 1110, 1110, 1110, 0),
(2, 1722169059000, 1110, 1110, 1110, 1110, 0),
(3, 1722169119000, 1110, 1110, 1110, 1110, 0),
(4, 1722169179000, 1110, 1110, 1110, 1110, 0),
(5, 1722169239000, 1110, 1110, 1110, 1110, 0),
(6, 1722169299000, 1110, 1110, 1110, 1110, 0),
(7, 1722169359000, 1110, 1110.2774658203125, 1109.766845703125, 1110, 5799000),
(8, 1722169419000, 1109.9332275390625, 1110.6436767578125, 1109.0343017578125, 1109, 8337000),
(9, 1722169479000, 1109.123046875, 1109.9439697265625, 1109.123046875, 1110, 8544000),
(10, 1722169539000, 1109.7108154296875, 1110.376708984375, 1109.7108154296875, 1110, 3645000),
(11, 1722169599000, 1110.376708984375, 1110.48779296875, 1110.3211669921875, 1110, 738000),
(12, 1722169659000, 1110.48779296875, 1110.48779296875, 1110.1546630859375, 1110, 486000),
(13, 1722169719000, 1110.1546630859375, 1110.1546630859375, 1110.1546630859375, 1110, 207000),
(14, 1722169779000, 1110.1546630859375, 1110.1546630859375, 1110.1546630859375, 1110, 207000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_tata`
--

DROP TABLE IF EXISTS `stock_profile_tata`;
CREATE TABLE `stock_profile_tata` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_tata`
--

INSERT INTO `stock_profile_tata` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 890, 890, 890, 890, 0),
(2, 1722169059000, 890, 890, 890, 890, 0),
(3, 1722169119000, 890, 890, 890, 890, 0),
(4, 1722169179000, 890, 890, 890, 890, 0),
(5, 1722169239000, 890, 890, 890, 890, 0),
(6, 1722169299000, 890, 890, 890, 890, 0),
(7, 1722169359000, 890, 890.917, 889.893, 891, 5634000),
(8, 1722169419000, 890.685, 890.89, 889.848, 891, 9717000),
(9, 1722169479000, 890.774, 891.006, 889.937, 890, 9903000),
(10, 1722169539000, 889.937, 890.044, 889.572, 890, 3921000),
(11, 1722169599000, 889.661, 889.83, 889.581, 890, 735000),
(12, 1722169659000, 889.83, 889.91, 889.83, 890, 447000),
(13, 1722169719000, 889.91, 889.91, 889.91, 890, 150000),
(14, 1722169779000, 889.91, 889.91, 889.91, 890, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_tatam`
--

DROP TABLE IF EXISTS `stock_profile_tatam`;
CREATE TABLE `stock_profile_tatam` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_tatam`
--

INSERT INTO `stock_profile_tatam` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 640, 640, 640, 640, 0),
(2, 1722169059000, 640, 640, 640, 640, 0),
(3, 1722169119000, 640, 640, 640, 640, 0),
(4, 1722169179000, 640, 640, 640, 640, 0),
(5, 1722169239000, 640, 640, 640, 640, 0),
(6, 1722169299000, 640, 640, 640, 640, 0),
(7, 1722169359000, 640, 640.3135986328125, 639.9616088867188, 640, 5490000),
(8, 1722169419000, 640.1407470703125, 640.1919555664062, 639.4560546875, 640, 8946000),
(9, 1722169479000, 639.750244140625, 640.2942504882812, 639.635009765625, 640, 7461000),
(10, 1722169539000, 640.0252075195312, 640.3773193359375, 640.0252075195312, 640, 4257000),
(11, 1722169599000, 640.0955810546875, 640.0955810546875, 640.018798828125, 640, 633000),
(12, 1722169659000, 640.082763671875, 640.082763671875, 640.0635986328125, 640, 765000),
(13, 1722169719000, 640.0635986328125, 640.0635986328125, 640.0635986328125, 640, 252000),
(14, 1722169779000, 640.0635986328125, 640.0635986328125, 640.0635986328125, 640, 252000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_tatap`
--

DROP TABLE IF EXISTS `stock_profile_tatap`;
CREATE TABLE `stock_profile_tatap` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_tatap`
--

INSERT INTO `stock_profile_tatap` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 240, 240, 240, 240, 0),
(2, 1722169059000, 240, 240, 240, 240, 0),
(3, 1722169119000, 240, 240, 240, 240, 0),
(4, 1722169179000, 240, 240, 240, 240, 0),
(5, 1722169239000, 240, 240, 240, 240, 0),
(6, 1722169299000, 240, 240, 240, 240, 0),
(7, 1722169359000, 240, 240.058, 239.844, 240, 4803000),
(8, 1722169419000, 239.88, 239.964, 239.815, 240, 9372000),
(9, 1722169479000, 239.844, 240.021, 239.77, 240, 9213000),
(10, 1722169539000, 240.021, 240.117, 240.005, 240, 4827000),
(11, 1722169599000, 240.108, 240.132, 240.108, 240, 831000),
(12, 1722169659000, 240.132, 240.151, 240.132, 240, 426000),
(13, 1722169719000, 240.151, 240.151, 240.151, 240, 51000),
(14, 1722169779000, 240.151, 240.151, 240.151, 240, 51000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_tatas`
--

DROP TABLE IF EXISTS `stock_profile_tatas`;
CREATE TABLE `stock_profile_tatas` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_tatas`
--

INSERT INTO `stock_profile_tatas` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 120, 120, 120, 120, 0),
(2, 1722169059000, 120, 120, 120, 120, 0),
(3, 1722169119000, 120, 120, 120, 120, 0),
(4, 1722169179000, 120, 120, 120, 120, 0),
(5, 1722169239000, 120, 120, 120, 120, 0),
(6, 1722169299000, 120, 120, 120, 120, 0),
(7, 1722169359000, 120, 120.029, 119.958, 120, 4317000),
(8, 1722169419000, 120.016, 120.054, 119.964, 120, 9096000),
(9, 1722169479000, 120.04, 120.056, 119.986, 120, 8547000),
(10, 1722169539000, 120.035, 120.04, 119.978, 120, 3627000),
(11, 1722169599000, 120.014, 120.026, 120.007, 120, 558000),
(12, 1722169659000, 120.026, 120.026, 120.013, 120, 600000),
(13, 1722169719000, 120.013, 120.013, 120.013, 120, 120000),
(14, 1722169779000, 120.013, 120.013, 120.013, 120, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_tcs`
--

DROP TABLE IF EXISTS `stock_profile_tcs`;
CREATE TABLE `stock_profile_tcs` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_tcs`
--

INSERT INTO `stock_profile_tcs` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 3350, 3350, 3350, 3350, 0),
(2, 1722169059000, 3350, 3350, 3350, 3350, 0),
(3, 1722169119000, 3350, 3350, 3350, 3350, 0),
(4, 1722169179000, 3350, 3350, 3350, 3350, 0),
(5, 1722169239000, 3350, 3350, 3350, 3350, 0),
(6, 1722169299000, 3350, 3350, 3350, 3350, 0),
(7, 1722169359000, 3350, 3558.510986328125, 3348.89453125, 3558, 4929000),
(8, 1722169419000, 3557.5859375, 3559.293701171875, 3214.779052734375, 3215, 9876000),
(9, 1722169479000, 3215.389892578125, 3661.75537109375, 3214.81103515625, 3662, 7986000),
(10, 1722169539000, 3661.75537109375, 3663.293212890625, 3660.6201171875, 3663, 4314000),
(11, 1722169599000, 3663.293212890625, 3663.366455078125, 3662.6337890625, 3663, 519000),
(12, 1722169659000, 3662.6337890625, 3662.6337890625, 3662.3408203125, 3662, 309000),
(13, 1722169719000, 3662.3408203125, 3662.3408203125, 3662.3408203125, 3662, 249000),
(14, 1722169779000, 3662.3408203125, 3662.3408203125, 3662.3408203125, 3662, 249000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_titan`
--

DROP TABLE IF EXISTS `stock_profile_titan`;
CREATE TABLE `stock_profile_titan` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_titan`
--

INSERT INTO `stock_profile_titan` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 3120, 3120, 3120, 3120, 0),
(2, 1722169059000, 3120, 3120, 3120, 3120, 0),
(3, 1722169119000, 3120, 3120, 3120, 3120, 0),
(4, 1722169179000, 3120, 3120, 3120, 3120, 0),
(5, 1722169239000, 3120, 3120, 3120, 3120, 0),
(6, 1722169299000, 3120, 3120, 3120, 3120, 0),
(7, 1722169359000, 3120, 3120.06, 3118.07, 3120, 4836000),
(8, 1722169419000, 3119.56, 3120.78, 3119.38, 3120, 7851000),
(9, 1722169479000, 3119.97, 3120.19, 3117.81, 3118, 9255000),
(10, 1722169539000, 3117.81, 3117.94, 3116.35, 3117, 4002000),
(11, 1722169599000, 3117.07, 3117.07, 3116.26, 3116, 627000),
(12, 1722169659000, 3116.26, 3116.91, 3116.26, 3117, 363000),
(13, 1722169719000, 3116.91, 3116.91, 3116.91, 3117, 258000),
(14, 1722169779000, 3116.91, 3116.91, 3116.91, 3117, 258000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_ultra`
--

DROP TABLE IF EXISTS `stock_profile_ultra`;
CREATE TABLE `stock_profile_ultra` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` float NOT NULL,
  `high` float NOT NULL,
  `low` float NOT NULL,
  `close` float NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_ultra`
--

INSERT INTO `stock_profile_ultra` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 8210, 8210, 8210, 8210, 0),
(2, 1722169059000, 8210, 8210, 8210, 8210, 0),
(3, 1722169119000, 8210, 8210, 8210, 8210, 0),
(4, 1722169179000, 8210, 8210, 8210, 8210, 0),
(5, 1722169239000, 8210, 8210, 8210, 8210, 0),
(6, 1722169299000, 8210, 8210, 8210, 8210, 0),
(7, 1722169359000, 8210, 8216.49, 8210, 8215, 5340000),
(8, 1722169419000, 8214.6, 8215.5, 8204.91, 8213, 9654000),
(9, 1722169479000, 8213.12, 8213.61, 8207.12, 8213, 8661000),
(10, 1722169539000, 8213.44, 8215.25, 8211.14, 8215, 3618000),
(11, 1722169599000, 8214.92, 8215.5, 8214.67, 8215, 576000),
(12, 1722169659000, 8215.5, 8216.73, 8215.5, 8217, 552000),
(13, 1722169719000, 8216.73, 8216.73, 8216.73, 8217, 198000),
(14, 1722169779000, 8216.73, 8216.73, 8216.73, 8217, 198000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_wipro`
--

DROP TABLE IF EXISTS `stock_profile_wipro`;
CREATE TABLE `stock_profile_wipro` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_wipro`
--

INSERT INTO `stock_profile_wipro` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 380, 380, 380, 380, 0),
(2, 1722169059000, 380, 380, 380, 380, 0),
(3, 1722169119000, 380, 380, 380, 380, 0),
(4, 1722169179000, 380, 380, 380, 380, 0),
(5, 1722169239000, 380, 380, 380, 380, 0),
(6, 1722169299000, 380, 380, 380, 380, 0),
(7, 1722169359000, 380, 380.307861328125, 380, 380, 5592000),
(8, 1722169419000, 380.11395263671875, 380.42950439453125, 380.0797424316406, 380, 8856000),
(9, 1722169479000, 380.42950439453125, 380.59307861328125, 380.250732421875, 380, 8472000),
(10, 1722169539000, 380.319091796875, 380.3457336425781, 380.07574462890625, 380, 4134000),
(11, 1722169599000, 380.1289367675781, 380.1289367675781, 380.0643310546875, 380, 495000),
(12, 1722169659000, 380.10614013671875, 380.1821594238281, 380.10614013671875, 380, 177000),
(13, 1722169719000, 380.1821594238281, 380.1821594238281, 380.1821594238281, 380, 90000),
(14, 1722169779000, 380.1821594238281, 380.1821594238281, 380.1821594238281, 380, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_yes`
--

DROP TABLE IF EXISTS `stock_profile_yes`;
CREATE TABLE `stock_profile_yes` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_yes`
--

INSERT INTO `stock_profile_yes` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 15, 15, 15, 15, 0),
(2, 1722169059000, 15, 15, 15, 15, 0),
(3, 1722169119000, 15, 15, 15, 15, 0),
(4, 1722169179000, 15, 15, 15, 15, 0),
(5, 1722169239000, 15, 15, 15, 15, 0),
(6, 1722169299000, 15, 15, 15, 15, 0),
(7, 1722169359000, 15, 15.010651588439941, 14.997150421142578, 15, 4326000),
(8, 1722169419000, 15.010651588439941, 15.01455307006836, 15.002994537353516, 15, 8631000),
(9, 1722169479000, 15.008095741271973, 15.011396408081055, 15.001341819763184, 15, 8802000),
(10, 1722169539000, 15.005691528320312, 15.009443283081055, 14.996540069580078, 15, 3921000),
(11, 1722169599000, 14.997889518737793, 14.998639106750488, 14.997739791870117, 15, 798000),
(12, 1722169659000, 14.998639106750488, 14.998639106750488, 14.996689796447754, 15, 147000),
(13, 1722169719000, 14.9977388381958, 14.9977388381958, 14.9977388381958, 15, 57000),
(14, 1722169779000, 14.9977388381958, 14.9977388381958, 14.9977388381958, 15, 57000),
(15, 1722169839000, 14.9977388381958, 14.9977388381958, 14.9977388381958, 15, 57000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_profile_zydus`
--

DROP TABLE IF EXISTS `stock_profile_zydus`;
CREATE TABLE `stock_profile_zydus` (
  `id` int(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  `open` double NOT NULL,
  `high` double NOT NULL,
  `low` double NOT NULL,
  `close` double NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_profile_zydus`
--

INSERT INTO `stock_profile_zydus` (`id`, `time`, `open`, `high`, `low`, `close`, `volume`) VALUES
(1, 1722168573000, 570, 570, 570, 570, 0),
(2, 1722169059000, 570, 570, 570, 570, 0),
(3, 1722169119000, 570, 570, 570, 570, 0),
(4, 1722169179000, 570, 570, 570, 570, 0),
(5, 1722169239000, 570, 570, 570, 570, 0),
(6, 1722169299000, 570, 570, 570, 570, 0),
(7, 1722169359000, 570, 570.40478515625, 569.9658203125, 570, 5148000),
(8, 1722169419000, 570.2222900390625, 570.5986938476562, 570.1936645507812, 570, 8706000),
(9, 1722169479000, 570.4046020507812, 570.4046020507812, 569.7887573242188, 570, 8850000),
(10, 1722169539000, 569.8856811523438, 570.187744140625, 569.8856811523438, 570, 3513000),
(11, 1722169599000, 570.0623168945312, 570.0623168945312, 569.976806640625, 570, 753000),
(12, 1722169659000, 570.010986328125, 570.010986328125, 569.9881591796875, 570, 372000),
(13, 1722169719000, 570.0052490234375, 570.0052490234375, 570.0052490234375, 570, 66000),
(14, 1722169779000, 570.0052490234375, 570.0052490234375, 570.0052490234375, 570, 66000),
(15, 1722169839000, 570.0052490234375, 570.0052490234375, 570.0052490234375, 570, 66000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `data` varchar(2000) NOT NULL,
  `date` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `uname`, `email`, `phone`, `data`, `date`) VALUES
(1, 'harsh', 'hirani', 'harsh_hirani', 'harsh.hce22@sot.pdpu.ac.in', '8155918098', 'yes', 1722166293523),
(2, 'Harsh', 'Hirani', 'Harsh_Hirani', 'harsh.hce22@sot.pdpu.ac.in', '8155918098', 'yes', 1722166448741),
(3, 'Harsh', 'Hirani', 'Harsh_Hirani', 'harsh.hce22@sot.pdpu.ac.in', '8155918098', 'yes', 1722166464335),
(4, 'Harsh', 'Hirani', 'Harsh_Hirani', 'harsh.hce22@sot.pdpu.ac.in', '8155918098', 'yes', 1722166528876);

-- --------------------------------------------------------

--
-- Table structure for table `user_current_sts`
--

DROP TABLE IF EXISTS `user_current_sts`;
CREATE TABLE `user_current_sts` (
  `id` int(255) NOT NULL,
  `balance` double NOT NULL,
  `invest` double NOT NULL,
  `profit` double NOT NULL,
  `tax` float NOT NULL,
  `date` bigint(30) NOT NULL,
  `freez` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_current_sts`
--

INSERT INTO `user_current_sts` (`id`, `balance`, `invest`, `profit`, `tax`, `date`, `freez`) VALUES
(1, 499987.52, 0, 0, 19.14, 1722166945291, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harsh_hirani_portfolio`
--
ALTER TABLE `harsh_hirani_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_adani`
--
ALTER TABLE `stocklinear_adani`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_adanip`
--
ALTER TABLE `stocklinear_adanip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_amb`
--
ALTER TABLE `stocklinear_amb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_bajaj`
--
ALTER TABLE `stocklinear_bajaj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_bajaja`
--
ALTER TABLE `stocklinear_bajaja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_bharat`
--
ALTER TABLE `stocklinear_bharat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_cipla`
--
ALTER TABLE `stocklinear_cipla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_coal`
--
ALTER TABLE `stocklinear_coal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_dr`
--
ALTER TABLE `stocklinear_dr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_gail`
--
ALTER TABLE `stocklinear_gail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_hdfc`
--
ALTER TABLE `stocklinear_hdfc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_hul`
--
ALTER TABLE `stocklinear_hul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_infosys`
--
ALTER TABLE `stocklinear_infosys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_ioc`
--
ALTER TABLE `stocklinear_ioc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_jfs`
--
ALTER TABLE `stocklinear_jfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_jindal`
--
ALTER TABLE `stocklinear_jindal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_larsen`
--
ALTER TABLE `stocklinear_larsen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_lic`
--
ALTER TABLE `stocklinear_lic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_maruti`
--
ALTER TABLE `stocklinear_maruti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_ongc`
--
ALTER TABLE `stocklinear_ongc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_page`
--
ALTER TABLE `stocklinear_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_reliance`
--
ALTER TABLE `stocklinear_reliance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_sbi`
--
ALTER TABLE `stocklinear_sbi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_sun`
--
ALTER TABLE `stocklinear_sun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_tata`
--
ALTER TABLE `stocklinear_tata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_tatam`
--
ALTER TABLE `stocklinear_tatam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_tatap`
--
ALTER TABLE `stocklinear_tatap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_tatas`
--
ALTER TABLE `stocklinear_tatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_tcs`
--
ALTER TABLE `stocklinear_tcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_titan`
--
ALTER TABLE `stocklinear_titan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_ultra`
--
ALTER TABLE `stocklinear_ultra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_wipro`
--
ALTER TABLE `stocklinear_wipro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_yes`
--
ALTER TABLE `stocklinear_yes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocklinear_zydus`
--
ALTER TABLE `stocklinear_zydus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_adani`
--
ALTER TABLE `stock_profile_adani`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_adanip`
--
ALTER TABLE `stock_profile_adanip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_amb`
--
ALTER TABLE `stock_profile_amb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_bajaj`
--
ALTER TABLE `stock_profile_bajaj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_bajaja`
--
ALTER TABLE `stock_profile_bajaja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_bharat`
--
ALTER TABLE `stock_profile_bharat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_cipla`
--
ALTER TABLE `stock_profile_cipla`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_coal`
--
ALTER TABLE `stock_profile_coal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_dr`
--
ALTER TABLE `stock_profile_dr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_gail`
--
ALTER TABLE `stock_profile_gail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_hdfc`
--
ALTER TABLE `stock_profile_hdfc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_hul`
--
ALTER TABLE `stock_profile_hul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_infosys`
--
ALTER TABLE `stock_profile_infosys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_ioc`
--
ALTER TABLE `stock_profile_ioc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_jfs`
--
ALTER TABLE `stock_profile_jfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_jindal`
--
ALTER TABLE `stock_profile_jindal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_larsen`
--
ALTER TABLE `stock_profile_larsen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_lic`
--
ALTER TABLE `stock_profile_lic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_maruti`
--
ALTER TABLE `stock_profile_maruti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_ongc`
--
ALTER TABLE `stock_profile_ongc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_page`
--
ALTER TABLE `stock_profile_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_reliance`
--
ALTER TABLE `stock_profile_reliance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_sbi`
--
ALTER TABLE `stock_profile_sbi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_sun`
--
ALTER TABLE `stock_profile_sun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_tata`
--
ALTER TABLE `stock_profile_tata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_tatam`
--
ALTER TABLE `stock_profile_tatam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_tatap`
--
ALTER TABLE `stock_profile_tatap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_tatas`
--
ALTER TABLE `stock_profile_tatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_tcs`
--
ALTER TABLE `stock_profile_tcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_titan`
--
ALTER TABLE `stock_profile_titan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_ultra`
--
ALTER TABLE `stock_profile_ultra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_wipro`
--
ALTER TABLE `stock_profile_wipro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_yes`
--
ALTER TABLE `stock_profile_yes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_profile_zydus`
--
ALTER TABLE `stock_profile_zydus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `harsh_hirani_portfolio`
--
ALTER TABLE `harsh_hirani_portfolio`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stocklinear_adani`
--
ALTER TABLE `stocklinear_adani`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_adanip`
--
ALTER TABLE `stocklinear_adanip`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_amb`
--
ALTER TABLE `stocklinear_amb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_bajaj`
--
ALTER TABLE `stocklinear_bajaj`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_bajaja`
--
ALTER TABLE `stocklinear_bajaja`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_bharat`
--
ALTER TABLE `stocklinear_bharat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_cipla`
--
ALTER TABLE `stocklinear_cipla`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_coal`
--
ALTER TABLE `stocklinear_coal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_dr`
--
ALTER TABLE `stocklinear_dr`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_gail`
--
ALTER TABLE `stocklinear_gail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_hdfc`
--
ALTER TABLE `stocklinear_hdfc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_hul`
--
ALTER TABLE `stocklinear_hul`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_infosys`
--
ALTER TABLE `stocklinear_infosys`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_ioc`
--
ALTER TABLE `stocklinear_ioc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_jfs`
--
ALTER TABLE `stocklinear_jfs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_jindal`
--
ALTER TABLE `stocklinear_jindal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_larsen`
--
ALTER TABLE `stocklinear_larsen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_lic`
--
ALTER TABLE `stocklinear_lic`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_maruti`
--
ALTER TABLE `stocklinear_maruti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_ongc`
--
ALTER TABLE `stocklinear_ongc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_page`
--
ALTER TABLE `stocklinear_page`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_reliance`
--
ALTER TABLE `stocklinear_reliance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_sbi`
--
ALTER TABLE `stocklinear_sbi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_sun`
--
ALTER TABLE `stocklinear_sun`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_tata`
--
ALTER TABLE `stocklinear_tata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_tatam`
--
ALTER TABLE `stocklinear_tatam`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_tatap`
--
ALTER TABLE `stocklinear_tatap`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_tatas`
--
ALTER TABLE `stocklinear_tatas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_tcs`
--
ALTER TABLE `stocklinear_tcs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_titan`
--
ALTER TABLE `stocklinear_titan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_ultra`
--
ALTER TABLE `stocklinear_ultra`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_wipro`
--
ALTER TABLE `stocklinear_wipro`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_yes`
--
ALTER TABLE `stocklinear_yes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stocklinear_zydus`
--
ALTER TABLE `stocklinear_zydus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `stock_profile_adani`
--
ALTER TABLE `stock_profile_adani`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_adanip`
--
ALTER TABLE `stock_profile_adanip`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_amb`
--
ALTER TABLE `stock_profile_amb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_bajaj`
--
ALTER TABLE `stock_profile_bajaj`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_bajaja`
--
ALTER TABLE `stock_profile_bajaja`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_bharat`
--
ALTER TABLE `stock_profile_bharat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_cipla`
--
ALTER TABLE `stock_profile_cipla`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_coal`
--
ALTER TABLE `stock_profile_coal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_dr`
--
ALTER TABLE `stock_profile_dr`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_gail`
--
ALTER TABLE `stock_profile_gail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stock_profile_hdfc`
--
ALTER TABLE `stock_profile_hdfc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_hul`
--
ALTER TABLE `stock_profile_hul`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_infosys`
--
ALTER TABLE `stock_profile_infosys`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_ioc`
--
ALTER TABLE `stock_profile_ioc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_jfs`
--
ALTER TABLE `stock_profile_jfs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_jindal`
--
ALTER TABLE `stock_profile_jindal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_larsen`
--
ALTER TABLE `stock_profile_larsen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_lic`
--
ALTER TABLE `stock_profile_lic`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_maruti`
--
ALTER TABLE `stock_profile_maruti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_ongc`
--
ALTER TABLE `stock_profile_ongc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_page`
--
ALTER TABLE `stock_profile_page`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_reliance`
--
ALTER TABLE `stock_profile_reliance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_sbi`
--
ALTER TABLE `stock_profile_sbi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_sun`
--
ALTER TABLE `stock_profile_sun`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_tata`
--
ALTER TABLE `stock_profile_tata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_tatam`
--
ALTER TABLE `stock_profile_tatam`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_tatap`
--
ALTER TABLE `stock_profile_tatap`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_tatas`
--
ALTER TABLE `stock_profile_tatas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_tcs`
--
ALTER TABLE `stock_profile_tcs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_titan`
--
ALTER TABLE `stock_profile_titan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_ultra`
--
ALTER TABLE `stock_profile_ultra`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_wipro`
--
ALTER TABLE `stock_profile_wipro`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_profile_yes`
--
ALTER TABLE `stock_profile_yes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stock_profile_zydus`
--
ALTER TABLE `stock_profile_zydus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

DELIMITER $$
--
-- Events
--
DROP EVENT IF EXISTS `call_process_all_stocks`$$
CREATE DEFINER=`root`@`localhost` EVENT `call_process_all_stocks` ON SCHEDULE EVERY 1 MINUTE STARTS '2024-07-28 17:46:39' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    CALL process_all_stocks();
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
