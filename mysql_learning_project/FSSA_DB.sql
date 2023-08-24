CREATE DATABASE fssa;
USE fssa;

CREATE TABLE Role (
id INT NOT NULL AUTO_INCREMENT,
role_name VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);
CREATE INDEX role ON Role (id);

CREATE TABLE Users(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR (150) NOT NULL,
last_name VARCHAR (150),
email_id VARCHAR (200) NOT NULL UNIQUE KEY,
password VARCHAR(100) NOT NULL,
github_username VARCHAR (200) NOT NULL UNIQUE KEY,
status BOOLEAN DEFAULT '1',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
CREATE INDEX user ON users (id);
CREATE INDEX git_user ON users (github_username);

CREATE TABLE Projects (
id INT NOT NULL AUTO_INCREMENT ,
project_name VARCHAR(150) NOT NULL,
status BOOLEAN DEFAULT '1',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
CREATE INDEX projectid ON Projects (id);
CREATE INDEX projectname ON Projects (project_name);

CREATE TABLE Repositories (
id INT NOT NULL AUTO_INCREMENT,
username VARCHAR (200) NOT NULL,
repo_name VARCHAR (200) NOT NULL, 
status BOOLEAN DEFAULT '1',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
CREATE INDEX repo_id ON Repositories (id);
CREATE INDEX repos_name ON Repositories (repo_name);

CREATE TABLE User_Roles(
id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
role_id INT NOT NULL DEFAULT '3',
PRIMARY KEY (id),
FOREIGN KEY (`user_id` ) REFERENCES `Users`(`id`),
FOREIGN KEY (`role_id` ) REFERENCES `Role`(`id`)
);

CREATE TABLE User_Projects(
id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
project_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (`user_id` ) REFERENCES `Users`(`id`),
FOREIGN KEY (`project_id` ) REFERENCES `Projects`(`id`)
);

CREATE TABLE Project_Repositories(
id INT NOT NULL AUTO_INCREMENT,
project_id INT NOT NULL,
repository_id INT NOT NULL,
PRIMARY KEY (id),
UNIQUE (project_id,repository_id),
FOREIGN KEY (`project_id` ) REFERENCES `Projects`(`id`),
FOREIGN KEY (`repository_id` ) REFERENCES `Repositories`(`id`)
);
ALTER TABLE Project_Repositories ADD status BOOLEAN DEFAULT '0';


update Project_repositories as pr
set pr.status = (select (status) from repositories where id = 1 )
where repository_id = 1;

update Project_repositories as pr
set pr.status = (select (status) from repositories where id = 2 )
where repository_id = 2;

update Project_repositories as pr
set pr.status = (select (status) from repositories where id = 3 )
where repository_id = 3;

update Project_repositories as pr
set pr.status = (select (status) from repositories where id = 4 )
where repository_id = 4;

update Project_repositories as pr
set pr.status = (select (status) from repositories where id = 5)
where repository_id = 5;


CREATE TABLE Courses(
id INT NOT NULL AUTO_INCREMENT,
course_name VARCHAR (200) NOT NULL,
status BOOLEAN DEFAULT '1',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
CREATE INDEX course ON Courses (id);
CREATE INDEX coursename ON Courses (course_name);

CREATE TABLE Topics(
id INT NOT NULL AUTO_INCREMENT,
topic_name VARCHAR(200) NOT NULL,
topic_discription VARCHAR (500) NOT NULL,
status BOOLEAN DEFAULT '1',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
CREATE INDEX topic ON Topics (id);
CREATE INDEX topicname ON Topics (topic_name);

CREATE TABLE Keywords(
id INT NOT NULL AUTO_INCREMENT,
keywords VARCHAR(200) NOT NULL,
status BOOLEAN DEFAULT '1',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
CREATE INDEX keywords_id ON Keywords (id);
CREATE INDEX keyword ON Keywords (keywords);

CREATE TABLE Resources(
id INT NOT NULL AUTO_INCREMENT,
link VARCHAR (500) NOT NULL,
status BOOLEAN DEFAULT '1',
created_at TIMESTAMP ,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
);
CREATE INDEX resourceid ON Resources (id);
CREATE INDEX links ON Resources (link);

CREATE TABLE Course_topics(
id INT NOT NULL AUTO_INCREMENT,
course_id INT NOT NULL,
topic_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (`course_id` ) REFERENCES `Courses`(`id`),
FOREIGN KEY (`topic_id` ) REFERENCES `Topics`(`id`)
);
CREATE INDEX course_topic ON Course_topics (id);

CREATE TABLE Topic_keywords(
id INT NOT NULL AUTO_INCREMENT,
topic_id INT NOT NULL,
keyword_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (`keyword_id` ) REFERENCES `Keywords`(`id`),
FOREIGN KEY (`topic_id` ) REFERENCES `Topics`(`id`)
);
CREATE INDEX Topickeyword_id ON Topic_keywords (id);

CREATE TABLE Course_resources(
id INT NOT NULL AUTO_INCREMENT,
course_id INT NOT NULL,
resource_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (`course_id` ) REFERENCES `Courses`(`id`),
FOREIGN KEY (`resource_id` ) REFERENCES `Resources`(`id`)
);
CREATE INDEX Course_resourceid ON Course_resources (id);

CREATE TABLE repository_commits(
id INT AUTO_INCREMENT,
repository_id INT NOT NULL,
commit_id varchar(100) NOT NULL UNIQUE,
commit_desc VARCHAR(100) NOT NULL,
commit_date TIMESTAMP NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id),
FOREIGN KEY (`repository_id` ) REFERENCES `Repositories`(`id`)
);


CREATE TABLE user_topics (
id INT AUTO_INCREMENT,
user_id INT NOT NULL,
topic_id INT NOT NULL,
count INT NOT NULL DEFAULT 0,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id),
FOREIGN KEY (`user_id` ) REFERENCES `Users`(`id`),
FOREIGN KEY (`topic_id` ) REFERENCES `Topics`(`id`)
);

CREATE TABLE user_commit_topics (
id INT AUTO_INCREMENT,
commit_id VARCHAR(100)  NOT NULL,
user_topic_id INT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id),
FOREIGN KEY (`user_topic_id` ) REFERENCES `user_topics`(`id`)
);

CREATE TABLE branches (
id INT AUTO_INCREMENT PRIMARY KEY,
branch_name VARCHAR(100) NOT NULL
);

CREATE TABLE repo_branch_commits(
id INT AUTO_INCREMENT PRIMARY KEY,
commit_id varchar(100) NOT NULL UNIQUE,
commit_desc VARCHAR(100) NOT NULL,
commit_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
branch_id INT NOT NULL
);
ALTER TABLE repo_branch_commits
ADD FOREIGN KEY (branch_id) REFERENCES branches(id);

INSERT INTO repo_branch_commits (commit_id,commit_desc,commit_date)
 SELECT commit_id,commit_desc,commit_date FROM repository_commits;
 
ALTER TABLE repository_commits DROP COLUMN commit_id;
ALTER TABLE repository_commits DROP COLUMN commit_date;
ALTER TABLE repository_commits DROP COLUMN commit_desc;

SELECT * FROM Users;
SELECT * FROM Role;
SELECT * FROM Projects;
SELECT * FROM Repositories;
SELECT * FROM User_Roles;
SELECT * FROM User_Projects;
SELECT * FROM Project_Repositories;
SELECT * FROM Courses;
SELECT * FROM Topics;
SELECT * FROM Keywords;
SELECT * FROM Resources;
SELECT * FROM Course_topics;
SELECT * FROM Topic_keywords; 
SELECT * FROM Course_resources;
SELECT * FROM repository_commits;
