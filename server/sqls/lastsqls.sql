--user

CREATE TABLE `bazzar`.`users` (`id` INT(255) NOT NULL AUTO_INCREMENT , `fname` VARCHAR(255) NOT NULL , `lname` VARCHAR(255) NOT NULL , `uname` VARCHAR(255) NOT NULL , `email` VARCHAR(255) NOT NULL , `phone` VARCHAR(30) NOT NULL , `data` VARCHAR(2000) NOT NULL , `date` BIGINT(20) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

--user_current_sts
CREATE TABLE `bazzar`.`user_current_sts` (`id` INT(255) NOT NULL , `balance` INT(30) NOT NULL , `lose` INT(30) NOT NULL , `profit` INT(30) NOT NULL , `date` BIGINT(30) NOT NULL , `isAllowed` INT(5) NOT NULL ) ENGINE = InnoDB;

-- Path: server/sqls/lastsqls.sql