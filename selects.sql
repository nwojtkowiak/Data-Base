-- a
select first_name, last_name,birthday, YEAR(current_date()) - YEAR(birthday) - (DATE_FORMAT(current_date(), '%m%d') < DATE_FORMAT(birthday, '%m%d'))
from employee where YEAR(current_date()) - YEAR(birthday) - (DATE_FORMAT(current_date(), '%m%d') < DATE_FORMAT(birthday, '%m%d')) >= 25;

-- b
select * from employee 
where length(last_name) > 5 ;

-- c
select * from employee 
where last_name like '_F%';

-- d
select * from car where course = (select MAX(course) from car);

-- e
select count(*) from car 
where course between 200000 and 300000;

-- f
select * 
from employee e 
join employ_position ep on e.position_id = ep.id
where ep.name = 'manager';

-- g
-- 1
-- z limit 2
select c.id, c.first_name, c.last_name, count(*) result 
from customer c 
join loan l on l.customer_id = c.id
group by c.id order by result desc limit 2; 

-- wszyscy z max
select c.id, c.first_name, c.last_name, count(*) result 
from customer c 
join loan l on l.customer_id = c.id
group by c.id -- order by result desc limit 2; 
having result = (select count(*) res from loan group by customer_id order by res desc limit 1);

-- 2
select monthname(l.date_from) month, count(*) result 
from loan l group by month(l.date_from);

-- 3 
select c.first_name, c.last_name, sub.month, sub.year, sub.result  
from customer c 
join (select customer_id, month, year,result
	  from count_by_month_year 	
	  where (customer_id,result) in 
                    (select customer_id, max(result) result 
					 from count_by_month_year
                     group by customer_id order by customer_id)
	) sub
on sub.customer_id = c.id;
   
-- 4  per client
select  month, c.first_name, c.last_name, round(n_all/n_year,2) from (
	select customer_id, monthname(date_from) month, count(distinct year(date_from)) n_year, count(*) n_all 
    from loan group by month, customer_id) 
as sub join customer c on c.id = sub.customer_id
order by month, customer_id ;

-- h

/*select cust.first_name, cust.last_name, result 
from count_by_customer c join customer cust on cust.id = c.customer_id
group by c.customer_id
having result = ( select max(result) from 	
						(select * from count_by_customer) sub);*/
                        
select cust.first_name, cust.last_name, result 
from count_by_customer c join customer cust on cust.id = c.customer_id
group by c.customer_id
having result = (select count(distinct car_id) result 
				 from loan group by customer_id order by result desc limit 1);

-- i
select * from count_by_mark 
having result = (select result from count_by_mark 
                 order by result desc limit 1 );

-- j 
-- z limit 3
select c.first_name, c.last_name, amount 
from (select l.customer_id id, sum(amount) amount from loan l
	  where year(l.date_from) = year(current_date())
	  group by l.customer_id      
      order by amount desc limit 3) max_pay 
join customer c on c.id = max_pay.id;

-- dla wszystkich z max
select c.first_name, c.last_name, amount 
from (select id, amount from sum_amount_by_customer
      having amount = (select amount from sum_amount_by_customer
	                   order by amount desc limit 1)
     ) max_pay 
join customer c on c.id = max_pay.id;

-- k
-- 1
select distinct c.first_name, c.last_name, l.date_from 
from customer c 
join loan l on l.customer_id = c.id
where l.car_id = 3
and l.date_from between '2018-06-01' and '2018-06-30';
 
 -- 2 przetestować dla 3 przypadków     
select distinct c.first_name, c.last_name
from customer c join loan l on l.customer_id = c.id
where l.car_id = 10 
and ('2018-01-01' between l.date_from and l.date_to
or   '2018-04-01' between l.date_from and l.date_to);

-- l
select color_id from car where id = 2;
update car
set color_id = 5
where id = 2;
select color_id from car where id = 2;

-- m
select c.first_name, c.last_name, mdo.result 
from customer c 
join max_different_office mdo
on c.id = mdo.customer_id;

-- n
select domain, count(*) result 
from (select substring_index(email,'@',-1) domain from customer) as e
group by domain order by result desc limit 1;

-- o
select * from car car where exists 
	(select count(distinct employee_id) result 
     from keeper where car_id = car.id 
     having result >= 2 );
    
-- p
select id, first_name, last_name 
from employee 
where id not in (select employee_id from keeper) order by id; 

