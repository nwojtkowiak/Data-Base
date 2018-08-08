CREATE OR REPLACE VIEW customer_loan AS 
SELECT c.*, l.date_from 'date from', l.date_to 'date to', car.mark 'the car brand' FROM customer c 
JOIN loan l ON c.id = l.customer_id
JOIN car car ON car.id = l.car_id;


CREATE OR REPLACE VIEW sum_amount_by_customer AS
SELECT l.customer_id id, SUM(amount) amount FROM loan l
WHERE YEAR(l.date_from) = YEAR(current_date())
GROUP BY l.customer_id;

CREATE OR REPLACE VIEW count_by_mark AS
SELECT c.mark, COUNT(l.id) result 
FROM loan l JOIN car c ON l.car_id = c.id
GROUP BY mark;

CREATE OR REPLACE VIEW count_by_customer AS
SELECT customer_id, COUNT(DISTINCT car_id) result 
FROM loan GROUP BY customer_id;

CREATE OR REPLACE VIEW different_office AS
	SELECT l.customer_id customer_id, 
		   COUNT(CASE WHEN l.office_from_id <> l.office_to_id THEN 1 END) result 
	FROM loan l GROUP BY l.customer_id ;
    
CREATE OR REPLACE VIEW max_different_office AS
	SELECT customer_id, result 
	FROM different_office 
	WHERE result = (SELECT MAX(result) result 
					 FROM different_office);    
                     
CREATE OR REPLACE VIEW count_by_month_year AS
SELECT l.customer_id, MONTHNAME(l.date_from) month, YEAR(l.date_from) year, COUNT(l.id) result 
FROM loan l GROUP BY l.customer_id, month, year;                     