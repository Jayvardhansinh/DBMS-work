create table student_info(Rno int, Name varchar(10), Branch varchar(10), SPI decimal(3,2), Bklog int);

insert into student_info values(101,'Raju','CE',8.80,0),
                               (102,'Amit','CE',2.20,3),
							   (103,'Sanjay','ME',1.50,6),
							   (104,'Neha','EC',7.65,1),
							   (105,'Meera','EE',5.52,2),
							   (106,'Mahesh','EC',4.50,3);

select * from student_info

----in decimal first value gives total number of digits to be stored and second number says how many digits after decimal point 

--Create a view Personal with all columns
create view personal as select * from student_info;

--Create a view Student_Details having columns Name, Branch & SPI
create view student_details as select name, Branch, SPI from student_info;

--Create a view AcademicData having columns RNo, Name, Branch.create view AcademicData as select Rno, Name, Branch from student_info;--Create a view Student_ bklog having all columns but students whose bklog more than 2create view Student_Bklog as select * from student_info where Bklog > 2;--Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four lettercreate view Student_Pattern as select Rno, Name, Branch from student_info where Name like '____';--Insert a new record to AcademicData view. (107, Meet, ME)insert into AcademicData values(107,'Meet','ME');--Update the branch of Amit from CE to ME in Student_Details viewupdate student_details set Branch = 'ME' where Name = 'Amit';--Delete a student whose roll number is 104 from AcademicData view.delete from AcademicData where Rno = 104;------Part B--------Create a view that displays information of all students whose SPI is above 8.5create view info as select * from student_info where SPI > 8.5;--Create a view that displays 0 backlog studentscreate view backlog as select * from  student_info where Bklog = 0;--Create a view Computerview that displays CE branch data onlycreate view Computerview as select * from student_info where Branch = 'CE';