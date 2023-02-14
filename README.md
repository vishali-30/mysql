 <!-- for users table -->
update

UPDATE users SET date_of_birth = '2004-01-20' WHERE user_id=101;

delete

DELETE FROM users WHERE user_id = 103;

create

INSERT INTO Customer(user_id,first_name,last_name,date_of_birth,email_id,address,phone_number,City) VALUES ('101','Dharun','Raj','2004-10-30','hdgsh@gmail.com','123/5,abc st','87653876','Chennai');

<!-- for product table -->
update

UPDATE products SET product_price = 8499 WHERE product_id=102;

delete

DELETE FROM products WHERE product_id = 108;

INSERT INTO project1.orders (order_id, user_id, product_id, product_price, date_and_time, total_price,quantity) VALUES ('3','111','102','7749','2022-12-22 04:39:22',7749*2,'2');

<!-- to get all users -->

SELECT * FROM users;

<!-- to get specific users -->

SELECT DISTINCT city FROM users;

<!-- to get all users with specific conditions -->

SELECT * FROM users WHERE last_name is NOT NULL;