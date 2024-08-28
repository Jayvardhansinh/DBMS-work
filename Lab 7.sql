create table EMP(EID int, Ename varchar(15), Department varchar(15), salary int, JoiningDate datetime, city varchar(15));

insert into EMP values(101,'Rahul','Admin',56000,'1990-01-01','Rajkot');
insert into EMP values(102,'Hardik','IT',18000,'1990-09-25','Ahmedabad');
insert into EMP values(103,'Bhavin','HR',25000,'1991-05-14','Baroda');
insert into EMP values(104,'Bhoomi','Admin',39000,'1991-02-08','Rajkot');
insert into EMP values(105,'Rohit','IT',17000,'1990-07-23','Jamnagar');
insert into EMP values(106,'Riya','IT',9000,'1990-10-18','Ahmedabad');
insert into EMP values(107,'Bhoomi','HR',34000,'1991-12-25','Rajkot');

select * from EMP;


----Part A----
select max(salary) as Highest , min(salary) as Lowest from EMP;

select sum(salary) as Total_sal , avg(salary) as Average_sal from EMP;

select count(Ename) from EMP;

select max(salary) as Highest from EMP where city = 'Rajkot';

select max(salary) from EMP where Department='IT';

select count(Ename) from EMP where JoiningDate > '1991-02-08';

select avg(salary) from EMP where Department = 'Admin';

select sum(salary) from EMP where Department = 'HR';

select count(distinct city) from EMP;

select count(city) from EMP;

select max(salary) from EMP where city = 'Ahmedabad';

select city , max(salary) from EMP
group by city;

select Department, min(salary) from EMP
group by Department;

select city, count(Ename) from EMP
group by city;

select Department, sum(salary) from EMP
group by Department;

select Department , avg(salary) from EMP
group by Department


----Part b----

select count(Ename) from EMP where city = 'Rajkot';

select max(salary)-min(salary) as difference from EMP;

select count(Ename) from EMP where JoiningDate < '1991-01-01';