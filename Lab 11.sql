CREATE TABLE STU_INFO(Rno INT, Name VARCHAR(25), Branch VARCHAR(10));

INSERT INTO STU_INFO VALUES(101,'RAJU','CE'),
(102,'AMIT','CE'),
(103,'SANJAY','ME'),
(104,'NEHA','EC'),
(105,'MEERA','EE'),
(106,'MAHESH','ME');

CREATE TABLE RESULT(Rno INT, SPI DECIMAL(4,2));

INSERT INTO RESULT VALUES(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9);

CREATE TABLE EMPLOYEE_MASTER(Employee_No VARCHAR(50), Name VARCHAR(50), Manager VARCHAR(50));

INSERT INTO EMPLOYEE_MASTER VALUES('E01','TARUN',NULL),
('E02','ROHAN','E02'),
('E03','PRIYA','E01'),
('E04','MILAN','E03'),
('E05','JAY','E01'),
('E06','ANJANA','E04');

SELECT * FROM STU_INFO;
SELECT * FROM RESULT;
SELECT * FROM EMPLOYEE_MASTER;

-----PART-A-----
--1. Combine information from student and result table using cross join or Cartesian product
SELECT * FROM STU_INFO CROSS JOIN RESULT;

--2. Perform inner join on Student and Result tables
SELECT * FROM STU_INFO INNER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno;

--3. Perform the left outer join on Student and Result tables
SELECT * FROM STU_INFO LEFT OUTER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno; 

--4. Perform the right outer join on Student and Result tables
SELECT * FROM STU_INFO RIGHT OUTER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno;

--5. Perform the full outer join on Student and Result tables
SELECT * FROM  STU_INFO FULL OUTER JOIN RESULT ON STU_INFO.Rno =RESULT.Rno;

--6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.Rno,Name,Branch FROM STU_INFO FULL OUTER JOIN RESULT ON STU_INFO.Rno = RESULT.Rno;

--7.Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.Rno,Name,Branch,SPI FROM STU_INFO FULL OUTER JOIN RESULT 
ON STU_INFO.Rno = RESULT.Rno WHERE Branch='CE';

--8.Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.Rno,Name,Branch,SPI FROM STU_INFO FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno WHERE Branch != 'EC';

--9.Display average result of each branch.
SELECT	AVG(SPI),Branch  FROM STU_INFO FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno GROUP BY Branch;

--10. Display average result of CE and ME branch.
SELECT	AVG(SPI),Branch FROM STU_INFO FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno GROUP BY Branch HAVING Branch ='CE' AND Branch='ME'

----PART-B----
--1.Display average result of each branch and sort them in ascending order by SPI.SELECT   branch,  AVG(spi) AS average_spi FROM
 SELECT STU_INFO.Branch, AVG(SPI) AS average_spi FROM STU_INFO FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno GROUP BY Branch ORDER BY average_spi ASC;

--2.Display highest SPI from each branch and sort them in descending order.

SELECT Branch, MAX(SPI) AS highest_spi FROM STU_INFO FULL OUTER JOIN RESULT
ON STU_INFO.Rno = RESULT.Rno GROUP BY Branch ORDER BY highest_spi DESC;

----PART-C----
--1.Retrieve the names of employee along with their manager’s name from the Employee table
