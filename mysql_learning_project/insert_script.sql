USE fssa;

-- to insert data into role table-- 

INSERT INTO Role (role_name) VALUES ('admin'),('faculty'),('student');

-- to insert data into user table-- 
INSERT INTO Users (
first_name,last_name,
email_id,password,
github_username,status)
VALUES
 ('pranaw','murugesan','mdpanaw@gmail.com','ab1234567','cyber_sparky','1' ),
 ('yogeshwari','selvendran','yogiarts@gmail.com','ab1234567','yogi_selvendran','1' ),
 ('balaji','saravanan','balaji@gmail.com','ab1234567','balaji_s','1' ),
 ('dharunraj','alagaruppu','dharun@gmail.com','abc1234567','dharun_a','1' ),
 ('karthikraja','pooraja','karthik@gmail.com','ab1234567','karthik_1','1' ),
 ('pranaw','murugesan','panaw@gmail.com','ab1234567','cyber-sparky','0' ),
 ('aakash','balamurugan','aakash205@gmail.com','ab1234567','aakash-205','0' );
 
--  to insert data into Projects table -- 

INSERT INTO Projects (
project_name,status) 
VALUES 
('scryptify','1'),
 ('liveon','1'),
 ('poltifact','1'),
 ('netbliz','1'),
 ('wisenow', '1'),
 ('betterme','0'),
 ('scryptify',0);

--   to insert data into Repositories table --

INSERT INTO Repositories (
username,repo_name,status) 
VALUES  
  ('cyber-sparky','pranaw-murugesan','1'),
  ('yogi_selvendran','yogeshwari-selvendran','1'),
  ('balaji_s','balaji-saravanan','1'),
  ('dharun_a','dharunraj-alagaruppu','1'),
  ('karthik-1','karthikraja-pooraja','1'),
  ('aakash-1','aakash205','0'),
  ('cyber-sparky1','pranaw_murugesan','0');
  
-- to insert data into User_Roles table -- 

INSERT INTO User_Roles (user_id) VALUES (1),(2),(3),(4),(5),(6),(7);

-- to insert data into User_Projects table -- 

INSERT INTO User_Projects (user_id,project_id) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,7),(7,6);

-- to insert data into Project_Repositories table -- 

INSERT INTO Project_Repositories (project_id,repository_id) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7);

-- TO INSERT DATA INTO branches TABLE --

INSERT INTO branches (branch_name) VALUES ('dev'),('dev'),('main'),('dev'),('main');

-- to insert data into repo_branch_commits table -- 

INSERT INTO repo_branch_commits (
branch_id,commit_id,
commit_desc,commit_date)
 VALUES
 (1,'9e01e9a','updated readme',NOW()),
 (2,'d7156bc','changed paths',NOW()),
 (3,'68a0981','changed paths',NOW()),
 (4,'34f32c3','changed names',NOW()),
 (5,'141939a','changed names',NOW());
 
--  
--  create procedure yourProcedureName(OptionalParameter)
--    begin
--    insert into yourTableName() values(yourValue1,yourValue2,...N);
-- end
--  create procedure insert_demo(IN Name varchar(40),IN Age int)
--    begin
--    insert into DemoTable1928(Name,Age) values(Name,Age)
--    end

   
   DELIMITER &&  
CREATE PROCEDURE users (IN github_username VARCHAR (200))  
BEGIN  
    insert into Users(github_username) values(suryaumapathy);
END &&  
DELIMITER ; 

   DELIMITER &&  
CREATE PROCEDURE projects (IN projects VARCHAR(150))  
BEGIN  
    insert into projects(projects) values(p1);
END &&  
DELIMITER ; 

DELIMITER &&  
CREATE PROCEDURE userproject (IN user_id INT , IN project_id INT )  
BEGIN  
    insert into User_Projects(user_id,project_id) values(SCOPE_IDENTITY(),SCOPE_IDENTITY());
END &&  
DELIMITER ; 

SELECT LAST_INSERT_ID();

select SCOPE_IDENTITY();
