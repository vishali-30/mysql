USE fssa;
-- to insert data into Courses table -- 
INSERT INTO courses(course_name) VALUES ('CSS3');
INSERT INTO courses(course_name) VALUES ('HTML5');
INSERT INTO courses(course_name) VALUES ('JavaScript');
INSERT INTO courses(course_name) VALUES ('Java');

  -- to insert data into Topics table -- 
INSERT INTO Topics (
topic_name,topic_discription,status)
 VALUES
 ('variables','Variables are containers for storing data',1),

 ('loops','Loops can execute a block of code a number of times',1),

 ('functions','A JavaScript function is a block of code designed to perform a particular task','1'),

 ('arrays','An array is a special variable, which can hold more than one value','1'),

 ('objects','Objects are variables too. But objects can contain many values',1);

INSERT INTO Keywords (
keywords,status) 
VALUES 
('push','1'),-- A
('pop','1'),
('filter','1'),
('slice','1'),

('constructor','1'),-- O
('prototype','1'),
('inheritance','1'),

('var','1'),
('let','1'),
('const','1');-- i

INSERT INTO Resources(
link,status)
 VALUES 
 ('https://www.w3schools.com/js/js_variables.asp','1'), -- v
 ('https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Variables','1'),
 ('https://javascript.info/variables','1'),
 
 ('https://www.w3schools.com/js/js_loop_for.asp',1),-- l
 ('https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Loops_and_iteration',1),
 ('https://www.freecodecamp.org/news/javascript-loops-explained-for-loop-for/',1),
 ('https://www.programiz.com/javascript/for-loop',1),
 
 ('https://www.w3schools.com/js/js_arrays.asp',1), -- A 
 ('https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array',1),
 ('https://www.geeksforgeeks.org/arrays-in-javascript/',1),
 ('https://www.codecademy.com/resources/docs/javascript/arrays',1),
 
 ('https://www.w3schools.com/js/js_functions.asp',1), -- F
 ('https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions',1),
 ('https://www.javascripttutorial.net/javascript-function/',1),
 ('https://www.geeksforgeeks.org/functions-in-javascript/',1),
 
 ('https://www.w3schools.com/js/js_objects.asp',1), -- O 
 ('https://www.programiz.com/javascript/object',1),
 ('https://www.javascripttutorial.net/javascript-objects/',1),
 ('https://www.theodinproject.com/lessons/node-path-javascript-objects-and-object-constructors',1);
 
-- to insert data into Course_topics table -- 
 INSERT INTO Course_topics(course_id,topic_id) 
 VALUES
 (3,1),(3,2),(3,3),(3,4),(3,5);
 
--  to insert data into Topic_keywords table -- 
INSERT INTO Topic_keywords (topic_id,keyword_id)
 VALUES
 (5,1),(5,2),(5,3),(5,4),(1,5),(1,6),(1,7),(4,8),(4,9),(4,10);

-- to insert data into Course_resources table -- 
INSERT INTO Course_resources (course_id,resource_id)
 VALUES 
 (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,12),(3,13),(3,14),(3,15),
 (3,8),(3,9),(3,10),(3,11),(3,16),(3,16),(3,17),(3,18),(3,19);
 
-- to insert data into repository_commits table -- 

INSERT INTO repository_commits(
repository_id,commit_id,
commit_desc,commit_date)
 VALUES 
 (1,'d7156bc','changed paths',NOW()),
 (1,'9e01e9a','updated readme',NOW()),
 (3,'34f32c3','changed paths',NOW()),
 (3,'141939a','changed paths',NOW()),
 (1,'68a0981','changed names',NOW());
        
-- to insert data into user_topics table -- 

INSERT INTO user_topics (user_id,topic_id,count) VALUES (1,2,0),(3,2,3),(4,2,2),(5,2,1),(2,2,4);

-- to insert data into user_commit_topics table --  
INSERT INTO user_commit_topics (commit_id,user_topic_id) VALUES ('9e01e9a','1'),('d7156bc',3),('68a0981',5),('34f32c3',2),('141939a',4);