CREATE TABLE IF NOT EXISTS customer (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    address VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    phone_number VARCHAR(45) NOT NULL,
    birthday DATE NOT NULL,
    credit_card VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);
  
  CREATE TABLE IF NOT EXISTS color(
   id INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(30) NOT NULL,
   PRIMARY KEY (id)
  );
  
CREATE TABLE IF NOT EXISTS type (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
  
  
CREATE TABLE IF NOT EXISTS car (
    id INT NOT NULL AUTO_INCREMENT,
    mark VARCHAR(45) NOT NULL,
    model VARCHAR(30) NOT NULL,
    type_id INT NOT NULL,
    prod_year INT(4) NOT NULL,
    color_id INT NOT NULL,
    capacity DOUBLE(3 , 1 ) NOT NULL,
    power INT NOT NULL,
    course BIGINT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT color_id FOREIGN KEY (color_id) REFERENCES color (id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT type_id FOREIGN KEY (type_id) REFERENCES type (id)
        ON DELETE CASCADE ON UPDATE CASCADE   
);
  

  
CREATE TABLE IF NOT EXISTS employ_position (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
  
CREATE TABLE IF NOT EXISTS office (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);
  
CREATE TABLE IF NOT EXISTS employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(45) NULL,
    last_name VARCHAR(45) NULL,
    birthday DATE NOT NULL,
    position_id INT NOT NULL,
    office_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT employee_position FOREIGN KEY (position_id)
        REFERENCES employ_position (id)  ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT employee_office FOREIGN KEY (office_id)
        REFERENCES office (id) ON DELETE CASCADE ON UPDATE CASCADE
);
  
CREATE TABLE IF NOT EXISTS loan (
    id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    date_from DATE NOT NULL,
    date_to DATE NULL,
    office_from_id INT NOT NULL,
    office_to_id INT NULL,
    amount DOUBLE(10 , 2 ) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT loan_customer FOREIGN KEY (customer_id)
        REFERENCES customer (id)  ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT loan_car FOREIGN KEY (car_id)
        REFERENCES car (id)  ON DELETE CASCADE ON UPDATE CASCADE,    
    CONSTRAINT loan_office_from FOREIGN KEY (office_from_id)
        REFERENCES office (id)  ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT loan_office_to  FOREIGN KEY (office_to_id)
        REFERENCES office (id) ON DELETE CASCADE ON UPDATE CASCADE
);
  
  
CREATE TABLE IF NOT EXISTS keeper (
    id INT NOT NULL AUTO_INCREMENT,
    employee_id INT NOT NULL,
    car_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT keeper_employee FOREIGN KEY (employee_id)
        REFERENCES employee (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT keeper_car FOREIGN KEY (car_id)
        REFERENCES car (id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS address (
	id INT NOT NULL AUTO_INCREMENT,
    street VARCHAR(50) NOT NULL,
    building INT NOT NULL,
    flat INT NULL,
    post_code VARCHAR(10) NULL,
    city VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);
    

  
  