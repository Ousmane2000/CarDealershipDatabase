
DROP DATABASE IF EXISTS CarDealership;
CREATE DATABASE CarDealership;
use CarDealership;

-- Table 1

Create Table dealerships (
dealership_id int auto_increment primary key,
name varchar(50),
address varchar(50),
phone varchar(12)

);


-- Table 2

Create Table vehicles (
Vin varchar(25) primary key,
Sold double NOT NULL

);


-- Table 3

Create Table inventory (
dealership_id int,
Vin varchar(25) primary key

);

-- Table 4
Create Table sales_contracts(
saleId int auto_increment primary key,
Vin varchar(25),
foreign key (Vin) REFERENCES vehicles(Vin)
);

-- Table 5

Create Table lease_contracts (
leaseId int auto_increment primary key,
Vin varchar(25),
foreign key (Vin) REFERENCES vehicles(Vin)
);
