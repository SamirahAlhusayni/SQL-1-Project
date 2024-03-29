-- create center DB for highschool
CREATE DATABASE highschool;

-- create tables (Students, Teachers, Subjects)
USE highschool;
CREATE TABLE Students(
Student_id INT PRIMARY KEY,
Student_name VARCHAR(225),
Sttudent_birthDate DATE ,
Student_gender VARCHAR(225),
JoiningDate Date ,
Student_email VARCHAR(225),
AcademicLevel INT,
Student_track VARCHAR(225),
Student_GPA INT
);

CREATE TABLE Teachers(
Teacher_id INT PRIMARY KEY,
Teacher_name VARCHAR(225),
Teacher_birthDate DATE ,
Teacher_gender VARCHAR(225),
Teacher_email VARCHAR(225),
OfficeNum INT
);

CREATE TABLE Subjects(
Subject_id INT PRIMARY KEY,
Subject_name VARCHAR(225)
);

-- Show available tables in DB
SHOW TABLES;

-- Insert 30 Students Information 
INSERT INTO Students
VALUES (1111, "Ali","1997-09-04", "M", "2020-05-09", "Ali@mail.com",4,"Scinces",97),
(1112, "Mohammed","1997-08-16", "M", "2020-05-09", "Moh@mail.com",4,"Scinces",85),
(1121, "Sarah","1996-09-17", "F", "2020-05-09", "Sarah@mail.com",5,"Scinces",100),
(1211, "Amal","1995-09-22", "F", "2020-05-09", "Amal@mail.com",6,"Scinces",80),
(2111, "Ayman","1997-07-02", "M", "2020-05-09", "Ay@mail.com",4,"Humanities",97),
(2222, "saqar","1997-09-23", "M", "2020-05-09", "Sq@mail.com",4,"Scinces",97),
(2221, "Abdullah","1996-01-05", "M", "2020-05-09", "abd@mail.com",5,"Humanities",89),
(2212, "hamad","1997-11-17", "M", "2020-05-09", "hamad@mail.com",3,"Scinces",97),
(2122, "Huda","1997-09-22", "F", "2020-05-09", "hu@mail.com",2,"Scinces",85),
(1222, "Samirah","1997-09-23", "F", "2020-05-09", "samirah@mail.com",5,"Scinces",97),
(3333, "Sami","1997-09-01", "M", "2020-05-09", "Sami@mail.com",4,"Scinces",97),
(3331, "Abed","1995-06-05", "M", "2020-05-09", "abed@mail.com",6,"Humanities",89),
(3313, "hmood","1997-08-02", "M", "2020-05-09", "hamood@mail.com",3,"Scinces",97),
(3133, "Hind","1997-09-08", "F", "2020-05-09", "hu@mail.com",2,"Scinces",85),
(1333, "Ola","1997-09-23", "F", "2020-05-09", "Ola@mail.com",5,"Humanities",97),
(4444, "Mazen","1997-09-15", "M", "2020-05-09", "Maz@mail.com",4,"Scinces",97),
(4441, "Faris","1997-08-08", "M", "2020-05-09", "far@mail.com",4,"Scinces",85),
(4414, "Sumyah","1996-08-09", "F", "2020-05-09", "Sum@mail.com",5,"Scinces",100),
(4144, "Shahad","1995-12-27", "F", "2020-05-09", "sh@mail.com",6,"Scinces",80),
(1444, "Ibrahim","1997-08-02", "M", "2020-05-09", "Ibr@mail.com",4,"Humanities",97),
(5555, "Abdurahman","1997-09-16", "M", "2020-05-09", "Abd@mail.com",4,"Scinces",97),
(5551, "Turky","1996-01-05", "M", "2020-05-09", "Tur@mail.com",5,"Humanities",89),
(5515, "Anas","1997-11-17", "M", "2020-05-09", "Anas@mail.com",3,"Scinces",97),
(5155, "Salwa","1997-09-29", "F", "2020-05-09", "hu@mail.com",1,"Scinces",85),
(1555, "btool","1997-09-23", "F", "2020-05-09", "bt@mail.com",5,"Scinces",97),
(6666, "Hassan","1997-09-29", "M", "2020-05-09", "Hassan@mail.com",4,"Scinces",97),
(6661, "Hussain","1995-06-05", "M", "2020-05-09", "Hus@mail.com",6,"Humanities",89),
(6662, "Khalid","1997-8-18", "M", "2020-05-09", "kh@mail.com",3,"Scinces",97),
(6663, "Norah","1997-09-29", "F", "2020-05-09", "Nor@mail.com",2,"Scinces",85),
(6664, "Taif","1997-09-23", "F", "2020-05-09", "Taif@mail.com",5,"Humanities",97);

-- Insert 10 Teachers Information 

INSERT INTO Teachers
VALUES (2220, "Hatem","1997-09-29", "M", "hat@mail.com",654),
(3330, "Ghaith","1997-08-04", "M", "ghaith@mail.com",678),
(4440, "Ghassan","1997-09-07", "M", "ghass@mail.com",876),
(5550, "Erjwan","1997-09-03", "F", "er@mail.com",789),
(2121, "Hussam","1997-09-09", "M", "Hussam@mail.com",222),
(4534, "Ezz","1997-08-04", "M", "Ezz@mail.com",345),
(7865, "Hattan","1997-09-22", "M", "Hattan@mail.com",987),
(9865, "Rhaf","1997-09-29", "F", "Rahaf@mail.com",654),
(5487, "Samir","1997-09-23", "M", "samir@mail.com",980),
(6660, "Riadh","1997-09-15", "M", "riadh@mail.com",432);


-- Insert 6 Subjects Information 
INSERT INTO Subjects
VALUES (1357,"English"),
(1579, "Math"),
(3579, "Physics"),
(2468, "Chemistry"),
(4681,"Arabic"),
(2469,"History");

-- Show all tables Cintent

SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Subjects;

-- Show the contents of the students' table with row arrangement ASC by student name
SELECT * FROM Students ORDER BY Student_name ASC;

/* Show the contents of the students table and give an alias to the 

"student name" field to shorten the name of the column or make it meaningful */

SELECT  
Student_id,
Student_name As sName,
Sttudent_birthDate  ,
Student_gender ,
JoiningDate  ,
Student_email ,
AcademicLevel ,
Student_track ,
Student_GPA 
FROM students;

-- Updating a student’s data and changing the student’s e-mail
UPDATE Students 
SET Student_email = "Mohammad@mail.com"
WHERE Student_id =1112; 
SELECT * FROM Students;

-- Updating a teacher’s data and changing his office number
UPDATE Teachers 
SET OfficeNum = 789
WHERE Teacher_id =3330; 
SELECT * FROM Teachers;

-- Modify the name of one of the Tables

ALTER TABLE Subjects
RENAME TO Courses;
SHOW TABLES;
