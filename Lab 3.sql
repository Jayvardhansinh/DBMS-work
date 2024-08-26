create table cricket(name varchar(50), city varchar(50), age int);

insert into cricket values('Jay Patel','Rajkot',30);
insert into cricket values('Rahul Dave','Baroda',35);
insert into cricket values('Jeet Patel','Surat',31);
insert into cricket values('Vijay Raval','Rajkot',30);

select * into worldcup from cricket;
select * from worldcup;

select name, city into T20 from cricket 1=2;
select * from T20;

select * into IPL from cricket where 1=2;
select * from IPL;


create table employee(name varchar(50), city varchar(50), age int);

insert into employee values('Jay Patel','Rajkot',30);
insert into employee values('Rahul Dave','Baroda',35);
insert into employee values('Jeet Patel','Surat',31);
insert into employee values('Vijay Raval','Rajkot',30);

select * into employee_detail from employee;
select * from employee_detail;

select name, city into employee_data from employee where 1=2;
select * from employee_data;

select * into employee_info from employee where 1=2;
select * from employee_info;

---- Update Opperation Part A----

--update deposit amount of all customer from 3000 to 5000
update deposit
set AMOUNT = 5000
where AMOUNT = 3000

--change branch name of anil from vrce to C.G.Road
update deposit
set BNAME = 'C.G.Road'
where BNAME ='VRCE'