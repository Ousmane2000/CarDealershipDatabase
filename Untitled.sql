
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
make varchar(30),
model varchar(30),
color varchar(30),
Sold boolean NOT NULL

);


-- Table 3

Create Table inventory (
dealership_id int,
make varchar(30),
model varchar(30),
color varchar(30),
Vin varchar(25) primary key


);

-- Table 4
Create Table sales_contracts(
saleId int auto_increment primary key,
Vin varchar(25),
date varchar(25),
name varchar(25),
number varchar(25),
foreign key (Vin) REFERENCES vehicles(Vin)
);

-- Table 5

Create Table lease_contracts (
leaseId int auto_increment primary key,
Vin varchar(25),
foreign key (Vin) REFERENCES vehicles(Vin)
);

-- Populate information for dealership:

insert into dealerships
values (123, "Hilside Toyota", "146-12 Hilside BLVD", "3477189291");
insert into dealerships
values (224, "Advantage Honda", "122-22 Advantage RD", "1128373353");
insert into dealerships
values (445, "Luxury Cars", "22 vermont av", "9009001000");

-- Populate information for vehicles:

insert into vehicles
values ("1234567", "BMW", "M7", "WHITE", true);
insert into vehicles
values ("1324560","Toyota","Highlander", "GREY", true);
insert into vehicles
values ("4563461","Honda","Accord", "BLACK", false);
insert into vehicles
values ("0987654","Mercedes","Bemz", "RED", true);

-- Populate information for inventory:
insert into inventory
values(445, "BMW", "M7", "WHITE", "1234567");
insert into inventory
values(224,"Toyota","Highlander", "GREY", "1324560");
insert into inventory
values(445,"Honda","Accord", "BLACK", "4563461");
insert into inventory
values(123,"Mercedes","Bemz", "RED", "0987654");


-- Populate information for lease_contracts:
insert into lease_contracts (Vin)
values("1324560"),
("4563461"),
("0987654");

-- Populate information for sales_contracts:
insert into sales_contracts (Vin, date, name, number)
values("1324560", "01-01-2021","Ousmane Diallo", "3472221323"),
("4563461", "01-01-2022", "Thierno Bah", "7189034523"),
("0987654", "01-01-2023", "Boubacar Diallo", "4556234435");


