CREATE TABLE customers (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(50),
  city varchar(50),
  PRIMARY KEY (id)
);

CREATE TABLE vehicles (
  id int NOT NULL AUTO_INCREMENT,
  numberplate varchar(15),
  color varchar(15),
  brand varchar(20),
  year int,
  capacity int,
  fuel varchar(20),
  price double,
  sold boolean,
  PRIMARY KEY (id)
);

CREATE TABLE sales (
  id int NOT NULL AUTO_INCREMENT,
  date date,
  price double,
  customerId int,
  vehicleId int,
  PRIMARY KEY (id),
  CONSTRAINT FK_sale_vehicle_id FOREIGN KEY(vehicleId) REFERENCES vehicles(id),
  CONSTRAINT FK_sale_customer_id FOREIGN KEY(customerId) REFERENCES customers(id)
);