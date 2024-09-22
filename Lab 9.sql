CREATE TABLE STUDENT_D (
    no INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT
);

CREATE TABLE ACADEMIC (
    Rno INT,
    SPI DECIMAL(3,1),
    Bklog INT
);

CREATE TABLE DEPARTMENT (
    DID INT,
    DName VARCHAR(50)
);

INSERT INTO STUDENT_D (no, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

INSERT INTO ACADEMIC (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

INSERT INTO DEPARTMENT (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');


SELECT *FROM STUDENT_D
SELECT *FROM ACADEMIC
SELECT *FROM DEPARTMENT

------Sub-Queries------
----Part-A----

--1. Display details of students who are from computer department. 
SELECT *FROM STUDENT_D
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Computer');

-- 2.Displays name of students whose SPI is more than 8. 
SELECT Name FROM STUDENT_D
WHERE no IN (SELECT Rno FROM ACADEMIC WHERE SPI > 8);

--3. Display details of students of computer department who belongs to Rajkot city.
SELECT *FROM STUDENT_D WHERE City = 'Rajkot'
AND DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Computer');

--4. Find total number of students of electrical department. 
SELECT COUNT(*) FROM STUDENT_D
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DName = 'Electrical');

--5. Display name of student who is having maximum SPI. 
SELECT Name FROM STUDENT_D WHERE no = (SELECT Rno FROM ACADEMIC
WHERE SPI = (SELECT MAX(SPI) FROM ACADEMIC) );

--6. Display details of students having more than 1 backlog. 
SELECT * FROM STUDENT_D
WHERE no IN (SELECT Rno FROM ACADEMIC WHERE Bklog > 1);