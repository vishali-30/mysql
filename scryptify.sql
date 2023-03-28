DROP DATABASE IF EXISTS `scryptify`;
CREATE DATABASE `scryptify`;
USE `scryptify`;

CREATE TABLE aministrator (
admin_id INT NOT NULL,
admin_name VARCHAR(255) NOT NULL
);
INSERT INTO aministrator(admin_id,admin_name) VALUES ('001','pranaw');

CREATE TABLE learner(
learner_id INT NOT NULL,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR (150),
gender VARCHAR(10), 
email_id VARCHAR (100) NOT NULL,
password VARCHAR(50) NOT NULL,
PRIMARY KEY (`learner_id`)
);

INSERT INTO learner (
learner_id,first_name,
last_name,gender,
email_id,password) 
VALUES 
('001','pranav','murugesan','male','pranaw@gmail.com','pranaw@123'),
('002','pravin','murugan','male','pravin@gmail.com','pravin@23'),
('003','prakash','raman','male','prakash@gmail.com','prakash@13'),
('004','priya','raja','female','priya@gmail.com','priya@13'),
('005','preethi','ranjith','female','preethi@gmail.com','preethi@13'),
('006','hari','haran','male','hari@gmail.com','haran@123'),
('007','abinayaa','senthilkumar','female','abinayaa@gmail.com','abi@143'),
('008','dhinesh','kumar','male','dhinesh@gmail.com','kumar@143'),
('009','vaishnavi','sureshkumar','female','vaishnavi@gmail.com','vaishu@143'),
('010','kousik','radhakrishnan','male','kousik@gmail.com','kousik@143'),
('011','kaviya','selvakumar','female','kaviya@gmail.com','kaviya@143'),
('012','dharshini','murugan','female','dharshu@gmail.com','dharsh@1005'),
('013','mohan','kumar','male','mohan@gmail.com','mohan@23'),
('014','mithra','sivakumar','female','mithra@gmail.com','siva@143'),
('015','jothi','anbumani','female','jothi@gmail.com','joo@143'),
('016','dharun','raj','male','adharun@gmail.com','dharun@143'),
('017','sneha','choudhri','female','sneha@gmail.com','sneha@2004'),
('018','iqbal','mohammed','male','iqbal@gmail.com','iqbal@2005'),
('019','mohammed','abbas','male','abbas@gmail.com','abbas@2003'),
('020','viyan','vinoth','male','viyan@gmail.com','viyan@2022');

CREATE TABLE learner_account(
learner_id INT NOT NULL  ,
course_completion VARCHAR (2550),
achivement VARCHAR(1550),
PRIMARY KEY (`learner_id`),
FOREIGN KEY (`learner_id` ) references `learner`(`learner_id`)
);

INSERT INTO learner_account (
learner_id,
course_completion,achivement)
 VALUES
('001','66%','Basics things,Web Hacking'),
('002','57%','Web Hacking'),
('003','45%','Basics things,Web Hacking'),
('004','36%','Hacking through mobile'),
('005','68%','Web Hacking,Hacking through mobile');

CREATE TABLE course (
course_id INT NOT NULL,
course_name VARCHAR(150)  NOT NULL,
course_discription VARCHAR (4500)
);

INSERT INTO course(
course_id,course_name,
course_discription) 
VALUES
 ('201','Things you should know','Basics things that need for a hacker'),
 ('202','Web Hacking','Things Which hackers do with web'),
 ('203','Hacking through mobile','Things Which hackers do with phone'),
 ('204','Cross-site script inclusion','XSS attacks are a type of injection, in
  which malicious scripts are injected into otherwise benign and trusted websites'),
 ('205','Kali Linux Course','Kali Linux is not about its tools, nor the operating system. Kali Linux is a platform'),
 ('206','Human Hacking','A global security expert draws on psychological insights to help you master the art of social engineering'),
 ('207','Network Security','a relatively new cyberattack technique that injects malicious code within digital ads'),
 ('208','Scripting','Network security is any activity designed to protect the usability and integrity of your network and data'),
 ('209','Malverting','a programming language that employs a high-level construct to interpret and execute one command at a time');

CREATE TABLE e_certificate (
certificate_id INT NOT NULL,
learner_id INT NOT NULL,
certificate_date timestamp  NOT NULL,
FOREIGN KEY (`learner_id` ) references `learner`(`learner_id`)

);

INSERT INTO e_certificate (certificate_id,learner_id,certificate_date) VALUES ('101','001','2022-10-22');
INSERT INTO e_certificate (certificate_id,learner_id,certificate_date) VALUES ('102','002','2022-12-30');
INSERT INTO e_certificate (certificate_id,learner_id,certificate_date) VALUES ('103','003','2023-01-22');
INSERT INTO e_certificate (certificate_id,learner_id,certificate_date) VALUES ('104','004','2023-01-30');
INSERT INTO e_certificate (certificate_id,learner_id,certificate_date) VALUES ('105','005','2023-02-16');
INSERT INTO e_certificate (certificate_id,learner_id,certificate_date) VALUES ('106','006','2023-04-30');

CREATE TABLE course_content (
content_id INT NOT NULL,
content_type VARCHAR(150)  NOT NULL,
content_discription VARCHAR (4500)
);

INSERT INTO course_content (
content_id,content_type,
content_discription) 
VALUES
('201','basic','Basic things that you should know about hacking before getting into this'),
('202','web','Things which are all done by hackers by web'),
('203','mobile','Hacking through mobile ( Learn and Protect )'),
('204','web',' works by manipulating a vulnerable web site so that it returns malicious JavaScript to users'),
('205','os','kali linux is a one-of-a-kind operating system that is used openly by both the bad and good guys'),
('206','human','Human Hacking provides tools that will help you establish rapport with strangers, 
use body language and verbal cues to your advantage'),
('207','network','Difficult to detect by both internet users and publishers, 
these infected ads are usually served to consumers through legitimate advertising networks'),
('208','scripting','A computer network, also referred to as a data network, is a series of interconnected
 nodes that can transmit, receive and exchange data'),
('209','scripting','In general, scripting languages are easier to learn and faster to code in than more structured and compiled languages');

 