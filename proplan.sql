DROP DATABASE IF EXISTS `proplan`;
CREATE DATABASE `proplan`;
USE `proplan`;
 CREATE TABLE `user` (
      user_id INT NOT NULL,
      name varchar (150) NOT NULL,
      display_name varchar (150) NOT NULL,
      email_id varchar(150) NOT NULL unique key,
      password varchar(30) not null,
      phone_number BIGINT NOT NULL unique key,
      profession VARCHAR (100) NOT NULL,
 primary key (`user_id`,`email_id`)
 );
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (001,'barath mohan','barath','barath@gmail.com','Icodeu0%','9876676765','intern');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values 
 (002,'isac deva abhishek','isac','isac@gmail.com','Icodeu99%','9876676766','teacher');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (003,'sasikumar saminathan','sasikumar','sasikumar@gmail.com','Icodeu98%','9876676768','employee');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (004,'mathankumar nagarajan','mathankumar','mathankumar@gmail.com','Icodeu97%','9876676767','driver');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values 
(005,'hemanath muralikrishnan','hemanath','hemanath@gmail.com','Icodeu96%','9876676769','backend developer');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (006,'balaji arumugam','balaji','balaji@gmail.com','Icodeu95%','9876675765','frontend developer');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (007,'naresh vellingiri','naresh','naresh@gmail.com','Icodeu94%','9876576765','fullstock developer');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (008,'parameshwari arumugam','parameshwari','parameshwari@gmail.com','Icodeu93%','9836676765','tester');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (009,'aakash balamurugan','aakash','aakash@gmail.com','Icodeu92%','9875576765','csr');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (010,'balaji saravanan','balaji','balajis@gmail.com','Icodeu91%','9874676765','ctr');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (011,'denny david','denny','denny@gmail.com','Icodeu90%','9876677765','hr');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values 
  (012,'dharunraj alagaruppu','dharunraj','dharunraj@gmail.com','Icodeu89%','9476676765','project manager');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (013,'gokul raj','gokul','gokul@gmail.com','Icodeu88%','9876606765','team leader');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (014,'joel premkumar','joel','joel@gmail.com','Icodeu87%','9875676765','doctor');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (015,'karthick pooraja','karthick','karthick@gmail.com','Icodeu86%','9873676765','singer');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (016,'kingston william','kingston','kingston@gmail.com','Icodeu85%','9276676765','dancer');
insert into user
(user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (017,'madhubala esakippandi','madhubala','madhubala@gmail.com','Icodeu84%','9176676765','accountant');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (018,'meganathan subramanian','meganathan','meganathan@gmail.com','Icodeu83%','9076676765','conductor');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (019,'nithilan saravan','nithilan','nithilan@gmail.com','Icodeu82%','9576676765','it team');
insert into user(
user_id,name,display_name,
email_id,password,
phone_number,profession)
values
 (020,'nithishri selvakumar','nithishri','nithishri@gmail.com','Icodeu81%','9976676765','playback singer');
 
 CREATE TABLE `account_details` (
user_id int NOT NULL,
balance VARCHAR(50) NOT NULL,
income VARCHAR(50) NOT NULL,
expense VARCHAR (50) NOT NULL,
FOREIGN KEY(user_id) REFERENCES user(user_id)
);
insert into account_details(
user_id,balance,
income,expense)
values
 (001,'30000','10000','7000');
insert into account_details(
user_id,balance,
income,expense)
values
 (002,'40000','20000','8000');
insert into account_details(
user_id,balance,
income,expense)
values
 (003,'10000','5000','300');
insert into account_details(
user_id,balance,
income,expense)
values
 (004,'20000','20000','1000');
insert into account_details(
user_id,balance,
income,expense)
values
 (005,'50000','60000','9000');
insert into account_details(
user_id,balance,
income,expense)
values
 (006,'60000','70000','7000');
insert into account_details(
user_id,balance,
income,expense)
values
 (007,'80000','80000','5000');
insert into account_details(
user_id,balance,
income,expense)
values
 (008,'70000','55000','3400');
insert into account_details(
user_id,balance,
income,expense)
values
 (009,'66000','66000','7300');
insert into account_details(
user_id,balance,
income,expense)
values
 (010,'32000','15000','7040');
insert into account_details(
user_id,balance,
income,expense)
values
 (011,'30500','10300','2000');
insert into account_details(
user_id,balance,
income,expense)
values
 (0012,'30600','10600','7060');
insert into account_details(
user_id,balance,
income,expense)
values
 (013,'30200','10400','7060');
insert into account_details(
user_id,balance,
income,expense)
values
 (014,'65000','10000','7000');
insert into account_details(
user_id,balance,
income,expense)
values
 (015,'76000','20000','8000');
insert into account_details(
user_id,balance,
income,expense)
values
 (016,'75000','5000','300');
insert into account_details(
user_id,balance,
income,expense)
values
 (017,'34000','34000','1000');
insert into account_details(
user_id,balance,
income,expense)
values
 (018,'67000','57000','9000');
insert into account_details(
user_id,balance,
income,expense)
values
 (019,'23000','70300','7000');
insert into account_details(
user_id,balance,
income,expense)
values
 (020,'45000','80340','5000');
 
CREATE TABLE `transaction`(
user_id INT NOT NULL,
transaction_type VARCHAR (100) NOT NULL,
amount VARCHAR(100) NOT NULL
);

INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('001','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('002','expense','4000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('003','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('004','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('005','expense','1000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('006','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('007','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('008','expense','8000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('009','expense','6000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('010','expense','18000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('011','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('012','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('013','income','40000');
INSERT INTO `transaction` (user_id,transaction_type,amount) VALUES ('014','expense','1200');

CREATE TABLE `notes`(
user_id INT NOT NULL,
title VARCHAR (100) NOT NULL,
description VARCHAR(100) NOT NULL
);

INSERT INTO `notes` (user_id,title,description) VALUES ('001','rent','october month rent - 5800');
INSERT INTO `notes` (user_id,title,description) VALUES ('002','expense','movie - 4000');
INSERT INTO `notes` (user_id,title,description) VALUES ('003','borrowed','jan month - 5800');
INSERT INTO `notes` (user_id,title,description) VALUES ('004','expense','movie - 3000');

CREATE TABLE `payment_details`(
user_id INT NOT NULL,
amount VARCHAR (100) NOT NULL,
payment_method VARCHAR(100) NOT NULL,
upi_id VARCHAR(100) NOT NULL,
request_status VARCHAR(100) NOT NULL,
balance VARCHAR(100) NOT NULL
);
INSERT INTO `payment_details` (user_id,amount,payment_method,upi_id,request_status,balance) VALUES ('001','10000','gpay','barath@oksbi','successful','30000');
INSERT INTO `payment_details` (user_id,amount,payment_method,upi_id,request_status,balance) VALUES ('002','10000','paytm','isac@oksbi','pending','2000');
INSERT INTO `payment_details` (user_id,amount,payment_method,upi_id,request_status,balance) VALUES ('003','1000','phonepe','sasikumar@oksbi','successful','50000');
INSERT INTO `payment_details` (user_id,amount,payment_method,upi_id,request_status,balance) VALUES ('004','13000','gpay','mathankumar@oksbi','successful','33000');
INSERT INTO `payment_details` (user_id,amount,payment_method,upi_id,request_status,balance) VALUES ('005','10000','paytm','hemanath@oksbi','pending','2000');
INSERT INTO `payment_details` (user_id,amount,payment_method,upi_id,request_status,balance) VALUES ('006','14000','phonepe','balaji@oksbi','successful','50000');