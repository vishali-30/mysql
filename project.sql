DROP DATABASE IF EXISTS `project`;
CREATE DATABASE `project`;
USE `project`;
 CREATE TABLE `users` (
      user_id INT NOT NULL,
      first_name varchar (150) NOT NULL  ,
      last_name varchar(150),
      gender varchar (10)NOT NULL,
      date_of_birth date NOT NULL ,
      email_id varchar(150) NOT NULL,
      phone_number BIGINT NOT NULL,
      address varchar (150) NOT NULL ,
      city varchar (150) NOT NULL ,
 primary key (`user_id`, `email_id`,`phone_number`)
);
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('101','vishali','elaiyaraja','female','2004-10-30','sdfg@gmail.com','8386578987',' 123/4, abc st,ashok nagar','chennai');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('102','harini','mohan','female','2004-12-01','fghj@gmail.com','8745672387',' 321/6, bch st,anna nagar','chennai');
   
   INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('103','abinayaa','senthilkumar','female','2005-07-15','tyhjm@gmail.com','8785324698',' 567/9, abc st,kamaraj nagar','salem');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('104','mohan','kumar','male','2004-06-30','wedf@gmail.com','3456789087',' 4/134, ghk st, ngo nagar','banglore');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('105','dhanush',null,'male','2003-08-13','mnbv@gmail.com','7648573879',' 987/4, abc st, cholan nagar','chennai');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('106','arun',' vijay','male','2000-07-22','mmht@gmail.com','8386587789',' 123/4, abc st,ashok nagar','chennai');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('107','sandhana',null,'female','2002-07-20','uygfg@gmail.com','6478939873',' 567/9, ama st,nggo nagar','salem');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('108','iqbal',null,'male','2005-06-23','mnbvxc@gmail.com','7564568392',' 4/876,sdf st,saibaba colony','coimbatore');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('109','karthic',null,'male','2000-04-29','ojhg@gmail.com','9387986543',' 678/4, tth st,ammapet','salem');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('110','sangamithra','kumar','female','2006-08-24','sdfgaa@gmail.com','8374566578',' 56/40, abc st,ashok nagar','chennai');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('111','nithila','vinothkumar','female','2010-05-30','zxcfgh@gmail.com','7483449876',' 123/4, bts st,fairlands','salem');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('112','dinesh','kumar','male','2004-08-18','mxgdy@gmail.com','9384447653',' 543/4, ttr st,anna nagar','chennai');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('113','pooja','shree','female','200-05-21','pokjh@gmail.com','7584559763',' 123/4, abc st,whitefield','banglore');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('114','dharun','prakash','male','2004-04-27','jkllo@gmail.com','9473467458',' 123/4, mmr st,avr nagar','salem');
INSERT INTO `users`
    (`user_id`,`first_name`,
    `last_name`,`gender`,
    `date_of_birth`,
    `email_id`,`phone_number`,
    `address`,`city`)
 VALUES 
   ('115','vignesh',null,'male','2001-10-19','ajgfdk@gmail.com','6357984890',' 321/8, hgf st,ashok nagar','chennai');

CREATE TABLE `products`(
      product_id INT NOT NULL ,
      product_name VARCHAR(150) NOT NULL,
      product_color VARCHAR(100) NOT NULL,
      ram VARCHAR(30) NOT NULL,
      rom VARCHAR(30) NOT NULL,
      processor VARCHAR (100) NOT NULL,
      front_camera VARCHAR(100) NOT NULL,
      rear_camera VARCHAR (100) NOT NULL,
      display_size VARCHAR (100) NOT NULL,
      network_type VARCHAR (100) NOT NULL,
      sim_type VARCHAR(50) NOT NULL,
      expandable_storage VARCHAR(50) NOT NULL,
	  battery_capacity VARCHAR(50) NOT NULL,
PRIMARY KEY (`product_id`)
 );
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
 VALUES 
     ( '101', 'REDMI Note 11T', 'Matte black', '8gb', '128gb', 'Octa Core', '50MP', '16MP', '7', '5g,4g,3g,2g', 'Dual sim', 'no', '5000mah');
 INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
 VALUES 
      ( '102', 'POCO C31', 'Royal Blue', '4gb', '64gb', 'MediaTek G35', '13MP', '5MP', '7', '4G, 3G, 2G', 'Dual sim', '512 GB', '5000mah');
  INSERT INTO `products`( 
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
 VALUES 
       ( '103', 'OPPO Reno8T', 'Midnight Black', '8gb', '128gb', 'Snapdragon 695', '108MP', '32MP', '7', '5g,4g,3g,2g', 'Dual sim', '1 TB', '4800 mAh');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
  VALUES 
      ( '104', 'MOTOROLA One Fusion+', 'Twilight Blue', '6gb', '128gb', ' Snapdragon 730G', '64MP', '16MP', '7', '4G, 3G, 2G', 'Dual sim', '1 TB', '5000mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
 VALUES 
     ('105', 'APPLE iPhone 14 Pro Max', 'Gold', '6gb', '256 GB', 'A16 Bionic Chip', '48MP', '12MP', '7', '5G, 4G, 3G, 2G', 'Dual sim', 'no', '4323mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
  VALUES 
      ( '106', 'vivo Y02', 'Cosmic Grey', '3gb', '32 GB', 'MediaTek P22', '8MP', '5MP', '7', '5G, 4G, 3G, 2G', 'Dual sim', '512 GB', '5000mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
  VALUES 
      ('107', 'SAMSUNG Galaxy A52s', 'Awesome Black', '8gb', '128gb', 'Snapdragon 778G', '64 MP', '32 MP', '7', '5g,4g,3g,2g', 'Dual sim', 'i TB', '4500mah');
  INSERT INTO`products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
  VALUES 
     ( '108', 'vivo T1 44W', 'Starry Sky', '4gb', '128gb', 'Snapdragon 680', '50MP', '16MP', '6', '4G, 3G, 2G', 'Dual sim', '512 GB', '5000mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
   VALUES 
      ( '109', 'redmi 9 Prime', 'Matte Black', '4gb', '64gb', 'MediaTek Helio G80', '13MP', '8MP', '6', '4G, 3G, 2G', 'Dual sim', '512 GB', '5020mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
  VALUES 
     ('110', 'SAMSUNG GALAXY M51', 'Celestial Black', '6gb', '128gb', 'MediaTek Helio G80', '13MP', '8MP', '6', '4G, 3G, 2G', 'Dual sim', '512 GB', '5020mah');
  INSERT INTO`products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
   VALUES 
      ( '111', 'OnePlus 10R', 'Forest Green', '8gb', '128gb', 'MediaTek Dimensity 8100-Max', '50MP', '16MP', '7', '5G ,4G, 3G, 2G', 'Dual sim', '512 GB', '5000mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
   VALUES 
      ('112', 'Google Pixel 6a', 'Chalk', '6gb', '128gb', 'Google Tensor', '13MP', '8MP', '6', '5G ,4G, 3G, 2G', 'Dual sim', '1 TB', '4410mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
    VALUES 
       ('113', 'Infinix HOT 20 Play', 'Fantasy Purple', '4gb', '64gb', 'MediaTek G37', '13MP', '8MP', '7', '4G, 3G, 2G', 'Dual sim', '256 GB', '6000mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
	VALUES 
        (  '115', 'OPPO K10', 'Blue Flame', '6gb', '128gb', 'Snapdragon 680', '50MP', '16MP', '7', '4G, 3G, 2G', 'Dual sim', '1 TB', '5000mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
	VALUES 
       ('116', 'realme 9 ', 'Stargaze White', '6gb', '128gb', 'Mediatek Dimensity 810', '48MP', '16MP', '7', '5G ,4G, 3G, 2G', 'Dual sim', '1 TB', '5000mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
	VALUES 
      ( '117', 'MOTOROLA G32', 'Mineral Gray', '4gb', '64gb', 'Snapdragon 680', '50MP', '16MP', '7', '4G, 3G, 2G', 'Dual sim', '1 TB', '5000mah');
   INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
	VALUES 
      ( '118', 'POCO X5 Pro 5G', 'Yellow', '8gb', '256gb', ' Snapdragon 778', '108MP', '16MP', '7', '5G,4G, 3G, 2G', 'Dual sim', '1 TB', '5000mah');
   INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
	VALUES 
      ( '119', 'Nothing Phone 1', 'White', '12gb', '256gb', '  Snapdragon 778', '50MP', '16MP', '7', '5G,4G, 3G, 2G', 'Dual sim', '1 TB', '4500mah');
  INSERT INTO `products` (
     product_id, product_name,
     product_color, ram, rom,
     processor, front_camera,
     rear_camera, display_size,
     network_type, sim_type,
     expandable_storage,
     battery_capacity) 
	VALUES 
      ( '120', 'realme 10 Pro 5G ', 'Nebula Blue', '12gb', '256gb', '  Snapdragon 778', '50MP', '16MP', '7', '5G,4G, 3G, 2G', 'Dual sim', '1 TB', '4500mah');
 CREATE TABLE `product_price_history` (
     product_id INT(11),
     date_ timestamp ,
     product_price INT(11),
     foreign key (`product_id`)
	 REFERENCES `products` (`product_id`)
);
  INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('101','2022-10-06','24999');
  INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('101','2022-10-10','20999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('101','2022-10-20','25999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('102','2022-10-06','19999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('102','2022-10-10','22999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('102','2022-10-20','15999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('103','2022-10-06','20999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('103','2022-10-10','18999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('103','2022-10-20','15499');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('104','2022-10-06','17999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('104','2022-10-10','20999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('104','2022-10-20','17999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('105','2022-10-06','179999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('105','2022-10-10','142999');
   INSERT INTO `product_price_history`
      (product_id,date_,product_price) 
  VALUES ('105','2022-10-20','140999');
  
CREATE TABLE `orders`(
      order_id INT  NOT NULL,
      user_id INT NOT NULL,
      product_id INT NOT NULL,
      product_price VARCHAR(150)  NOT NULL,
      date_time timestamp NOT NULL,
      order_number varchar(20) NOT NULL ,
      quantity INT  NOT NULL,
      total_price varchar(100) NOT NULL,
      FOREIGN KEY (`user_id` ) references `users`(`user_id`),
      foreign key  (`product_id`) references `products`(`product_id`)
 );
  INSERT INTO `orders`
      (order_id,user_id,product_id,product_price,date_time,order_number,quantity,total_price) 
  VALUES
     ('1','102', '101','24999', '2022-10-06 ', '#7778','2',24999*2);
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
     ('2','106', '101',  '20999', '2022-10-10 ','#7779','3',20999*3);
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
    ('3','110', '101', '25999', '2022-10-20 ', '#7780','1',25999*1);
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
      ('4','115', '102', '19999', '2022-10-06 ', '#7781','2',19999*2);
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
    ('5','114', '102', '22999', '2022-10-10 ', '#7782','4',22999*4); 
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
    ('6','111', '102','15999',  '2022-10-20 ', '#7783','3',15999*3); 
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
    ('7','107', '103',  '20999','2022-10-06', '#7784','3',20999*3); 
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
    ('8','106', '103',  '18999', '2022-10-10 ','#7785','1',18999*1); 
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
    ('9','105','103',  '15499','2022-10-20 ', '#7786','6',15499*6); 
INSERT INTO `orders`
      (order_id,user_id,
      product_id,product_price,
      date_time,order_number,
      quantity,total_price) 
  VALUES
    ('10','107','104',  '17999', '2022-10-06','#7787','7',17999*7); 
