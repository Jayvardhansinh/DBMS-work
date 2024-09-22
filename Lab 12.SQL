--1. Find all persons with their department name & code
SELECT PERSON.PersonName, DEPT.DepartmentName, DEPT.DepartmentCode
FROM PERSON JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID;

--2. Find the person's name whose department is in C-Block
SELECT PERSON.PersonName, DEPT.Location
FROM PERSON JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.Location = 'C-Block'; 

--3. Retrieve person name, salary & department name who belongs to Jamnagar city
SELECT PERSON.PersonName, PERSON.Salary, DEPT.DepartmentName
FROM PERSON JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City = 'Jamnagar';

--4. Retrieve person name, salary & department name who does not belong to Rajkot city
SELECT PERSON.PersonName, PERSON.Salary, DEPT.DepartmentName
FROM PERSON JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City <> 'Rajkot';

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001
SELECT PERSON.PersonName, DEPT.DepartmentName
FROM PERSON JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.JoiningDate > '2001-08-01';

--6. Find details of all persons who belong to the computer department
SELECT * FROM PERSON JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentName = 'Computer';

--7. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days

SELECT PERSON.PersonName, DEPT.DepartmentName
FROM PERSON JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.JoiningDate
