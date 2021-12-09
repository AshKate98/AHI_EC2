show databases;
use tempdata;
select * from H1N1 limit 10;
delimiter $$
CREATE TRIGGER H1N1Alert BEFORE INSERT ON H1N1
FOR EACH ROW
BEGIN
IF NEW.alert >= 4 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ERROR: Must be between 0-4!';
END IF;
END; $$