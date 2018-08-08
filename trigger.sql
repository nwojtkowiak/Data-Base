delimiter //
DROP TRIGGER loan_amount_insert;
CREATE TRIGGER loan_amount_insert BEFORE INSERT ON loan
 FOR EACH ROW 
 BEGIN
  IF NEW.amount < 100 THEN
	 SET NEW.amount = 100;
   END IF; 
 END //
 
 delimiter //
 CREATE TRIGGER loan_amount_update BEFORE UPDATE ON loan
 FOR EACH ROW 
 BEGIN
	IF NEW.amount < 100 THEN
	 SET NEW.amount = 100;
   END IF; 
 END; //
 
 select * from loan where customer_id = 10;