/*1*/INSERT INTO employ_position(name) VALUES ('manager');
/*2*/INSERT INTO employ_position(name) VALUES ('dealer');
/*3*/INSERT INTO employ_position(name) VALUES ('accountant');

/*1*/INSERT INTO color(name) VALUES ('white');
/*2*/INSERT INTO color(name) VALUES ('black');
/*3*/INSERT INTO color(name) VALUES ('silver');
/*4*/INSERT INTO color(name) VALUES ('red');
/*5*/INSERT INTO color(name) VALUES ('blue');
/*6*/INSERT INTO color(name) VALUES ('green');

/*1*/INSERT INTO type(name) VALUES ('hatchback');
/*2*/INSERT INTO type(name) VALUES ('sedan');
/*3*/INSERT INTO type(name) VALUES ('suv');
/*4*/INSERT INTO type(name) VALUES ('kombi');
/*5*/INSERT INTO type(name) VALUES ('minivan');
/*6*/INSERT INTO type(name) VALUES ('kompakt');

/*1*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Peugeot', '206', 6, 2002, 3, 1.4, 40, 200000 );
/*2*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Opel', 'Corsa', 6, 2000, 1, 1.2, 40, 150000 );
/*3*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Mercedes-Benz', 'Klasa C', 2, 2014, 1, 2.2, 170, 72000 );
/*4*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Skoda', 'Octavia', 2, 2012, 5, 1.9, 245, 212841 );
/*5*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Ford', 'Mondeo', 2, 2013, 4, 1.9, 140, 120000 );
/*6*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('BMW', 'X3', 3, 2014, 2, 1.9, 240, 51000 );
/*7*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Seat', 'Alhambra', 5, 2002, 6, 1.9, 245, 365000 );
/*8*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Audi', 'A8', 2, 2008, 1, 3.0, 245, 181000 );
/*9*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Alfa Romeo', 'Giulietta', 4, 2011, 6, 1.4, 170, 5000 );
/*10*/INSERT INTO car (mark, model, type_id, prod_year, color_id, capacity, power, course ) VALUES ('Citroen ', 'C4', 5, 2006, 1, 1.6, 89, 150000 );

-- name, address, phone_number
/*1*/INSERT INTO office (name, address, phone_number) VALUES ('Kolorowa','Kolorowa 6 Poznan', '741258963');
/*2*/INSERT INTO office (name, address, phone_number) VALUES ('Anders','Andersa 5 Bydgoszcz', '741651238');
/*3*/INSERT INTO office (name, address, phone_number) VALUES ('Wars','Zimna 1 Warszawa','741456328');

-- first_name,last_name, position_id, office_id 
/*1*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Roman', 'Kowalski','1980-05-04', 1 ,1 );
/*2*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Jan', 'Nowak','1997-05-04',2 ,1 );
/*3*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Andrzej', 'Kmicic','1990-05-04',3 ,1 );
/*4*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Beata', 'Konewka','1995-05-04',2, 1);
/*5*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Jakub', 'Wojcik','1980-05-04',3 , 2);
/*6*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Kacper', 'Kowalczyk','1999-05-04',1 , 2);
/*7*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Filip', 'Kaminski','1991-05-04', 2, 2);
/*8*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Szymon', 'Lewandowski','1989-05-04',2 , 2);
/*9*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Jan', 'Zielinski','1990-05-04', 1, 3);
/*10*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Julia', 'Wozniak','1974-05-04', 2, 3);
/*11*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Lena', 'Kozlowska','1974-05-04',2 , 3);
/*12*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Karolina', 'Jankowska','1999-05-04',3 , 3);
/*13*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Karol', 'JFrankowski','1999-05-04',3 , 3);
/*14*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Karol', 'Jakis','1993-05-04',3 , 3);
/*15*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Karolina', 'Jakas','1993-08-07',3 , 3);
/*15*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Karolina', 'Jakas','1993-08-06',3 , 3);
/*15*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Karolina', 'Jakas','1993-08-08',3 , 3);
/*15*/INSERT INTO employee (first_name, last_name, birthday, position_id, office_id) VALUES ('Karolina', 'Jakas','1993-08-09',3 , 3);

-- first_nam,last_name, address, email, phone_number, birthday, credit_card
/*1*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Roman', 'Kowalski', 1,'roman.kowalski@wp.com', '720279758','1980-05-04','3096 2717 1663 9402' );
/*2*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Jan', 'Nowak',2,'jan.nowak@onet.com','280231583','1997-05-04','36248528413506' );
/*3*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Andrzej', 'Kmicic',3, 'andrzej.kmicic@mail.com','028973066','1990-05-04','345214109074501' );
/*4*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Beata', 'Konewka',4,'beata.konewka@gmail.com','952806209','1995-05-04','5251 5770 0726 1607' );
/*5*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Jakub', 'Wojcik',5,'jakub.wojcik@gmail.com','070497917','1980-05-04','341700589607707' );
/*6*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Kacper', 'Kowalczyk',6,'kacper.kowalczyk@gmail.com','949264506','1999-05-04','38829668301300' );
/*7*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Filip', 'Kaminski',7,'filip.kaminski@mail.com' ,'454588424','1991-05-04','342937643349509' );
/*8*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Szymon', 'Lewandowski',8,'szymon.lewandowski@mail.com','812543070','1989-05-04','36033430039700' );
/*9*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Jan', 'Zielinski',9,'jan.zielinski@gazeta.com','800362799','1990-05-04','36033430039700' );
/*10*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Julia', 'Wozniak',10, 'julia.wozniak@wp.com','880235491','1974-05-04','38675079885708' );
/*11*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Lena', 'Kozlowska',11,'lena.kozlowska@gmail.com','270330727','1974-05-04','3112 5092 4893 3904' );
/*12*/INSERT INTO customer (first_name, last_name, address, email, phone_number, birthday, credit_card ) VALUES ('Karolina', 'Jankowska','Curie 377 Warszawa','karolina.jankowska@mail.com','944206212','1999-05-04','3096 2807 6576 2502' );

-- customer_id, car_id, date_from, date_to, office_from_id_id, office_to_id,amount
/*1*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(1,1,'2018-01-08','2018-01-20',1,1,1000 );
/*2*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(1,2,'2018-02-20','2018-02-21',1,1,100 );
/*3*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(1,3,'2017-02-22','2018-02-28',1,2,600 );
/*2*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(1,2,'2017-02-20','2018-02-21',1,1,100 );
/*3*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(1,3,'2016-02-22','2018-02-28',1,2,600 );

/*4*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(2,4,'2018-04-10','2018-04-10',3,2,100 );
/*5*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(2,4,'2018-04-12','2018-04-15',3,1,500 );
/*6*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(2,4,'2018-04-20','2018-04-30',3,1,1000 );
/*7*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(2,4,'2018-05-20','2018-05-30',1,1,1500 );
/*8*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(2,4,'2018-05-20','2018-05-30',1,1,1500 );

/*9*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(3,5,'2018-06-01','2018-06-03',3,3,300 );
/*10*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(3,6,'2018-07-01','2018-07-03',3,2,300 );
/*11*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(3,7,'2018-08-01','2018-08-03',3,3,300 );
/*12*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(3,8,'2018-10-01','2018-10-03',3,1,300 );
/*13*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(3,5,'2018-10-06','2018-10-09',3,3,300 );

/*14*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(4,8,'2018-08-05','2018-08-06',2,2,100 );
/*15*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(4,8,'2018-08-09','2018-08-10',2,3,100 );

/*16*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(5,9,'2018-05-05','2018-05-13',2,1,1500 );

/*17*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(6,5,'2018-01-01','2018-01-03',3,3,300 );
/*18*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(6,6,'2018-01-10','2018-01-20',3,2,1000 );
/*19*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(6,7,'2018-05-01','2018-05-03',3,3,300 );
/*20*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(6,8,'2018-07-01','2018-07-03',3,1,300 );
/*21*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(6,5,'2018-10-01','2018-10-03',3,3,900 );

/*22*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(7,10,'2018-07-05','2018-07-06',1,2,100 );
/*21*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(7,10,'2018-07-09','2018-07-10',1,3,100 );

/*22*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(8,1,'2018-02-01','2018-02-06',3,1,500 );
/*23*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(8,2,'2018-04-01','2018-04-06',3,2,500 );
/*24*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(8,3,'2018-06-01','2018-06-26',3,2,2500 );
/*25*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(8,4,'2018-08-01','2018-08-06',3,1,500 );
/*26*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(8,1,'2018-11-01','2018-11-06',3,3,500 );
/*26*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(8,9,'2018-11-12','2018-11-24',3,3,1200 );

/*27*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(10,9,'2018-11-12','2018-11-24',3,3,1 );

/*28*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(11,10,'2017-11-12','2018-04-01',3,3,1 );
/*29*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(11,10,'2017-11-12','2018-03-01',3,3,1 );
/*30*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(11,10,'2017-01-05','2018-03-01',3,3,1 );
/*31*/INSERT INTO loan(customer_id, car_id, date_from, date_to, office_from_id, office_to_id, amount) VALUES(11,10,'2017-01-05','2018-04-01',3,3,1 );


/*1*/INSERT INTO keeper(employee_id, car_id) VALUES(1,1);
/*2*/INSERT INTO keeper(employee_id, car_id) VALUES(1,2);
/*3*/INSERT INTO keeper(employee_id, car_id) VALUES(2,1);
/*4*/INSERT INTO keeper(employee_id, car_id) VALUES(2,3);
/*5*/INSERT INTO keeper(employee_id, car_id) VALUES(3,4);
/*6*/INSERT INTO keeper(employee_id, car_id) VALUES(4,5);


INSERT INTO address(street, building, flat, post_code, city) values('Sowia', 1,null,null, 'Poznan');
INSERT INTO address(street, building, flat, post_code, city) values('Konopnickiej', 15, 2,null, 'Poznan');
INSERT INTO address(street, building, flat, post_code, city) values('Piotrowo', 3, 3, null, 'Bydgoszcz');
INSERT INTO address(street, building, flat, post_code, city) values('Karlowicza', 222,2,null, 'Bydgoszcz');
INSERT INTO address(street, building, flat, post_code, city) values('Winogrady', 12,24, null,'Warszawa');
INSERT INTO address(street, building, flat, post_code, city) values('27 grudnia', 27,27,null, 'Warszawa');
INSERT INTO address(street, building, flat, post_code, city) values('Kaponiera', 30,78, null,'Warszawa');
INSERT INTO address(street, building, flat, post_code, city) values('Ziembicka', 90,11, null,'Poznan');
INSERT INTO address(street, building, flat, post_code, city) values('Lipowa', 15,188, null,'Bydgoszcz');
INSERT INTO address(street, building, flat, post_code, city) values('Kurpinskiego', 78,1,null,'Warszawa');
INSERT INTO address(street, building, flat, post_code, city) values('Chrobrego', 45,2,null, 'Poznan');






select * from customer;
select * from employee;
select * from loan;


select customer_id, COUNT(*) num from loan group by customer_id order by num desc limit 1;

-- delete from loan where id > 0;
-- delete from loan where customer_id = 6 and car_id =  5;