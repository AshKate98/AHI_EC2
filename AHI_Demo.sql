show databases;
use tempdata;
select * from H1N1 limit 10;
delimiter $$
CREATE TRIGGER H1N1_concern_trigger BEFORE INSERT ON H1N1
FOR EACH ROW
BEGIN
IF NEW.alert >= 3 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT ='ERROR: H1N1 CONCERN SHOULD BE A NUMERICAL VALUE BETWEEN O AND 3. PLEASE TRY AGAIN.'
;END IF;
END; $$