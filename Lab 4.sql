-- Add two more columns City VARCHAR (20) and Pincode INT
alter table deposit
add city varchar(20), pincode int;
select * from deposit;

-- Change the size of CNAME column from VARCHAR (50) to VARCHAR (35)
alter table deposit
alter column CNAME varchar(35);
select * from deposit;

-- Change the data type DECIMAL to INT in amount Column
alter table deposit
alter column AMOUNT int;
select * from deposit;

--Rename Column ActNo to ANO
alter table deposit
SP_rename 'deposit.AMOUNT','ANO';
select * from deposit;

--Delete Column City from the DEPOSIT table
alter table deposit
drop column city;
select * from deposit;

--Change name of table DEPOSIT to DEPOSIT_DETAIL
alter table deposit
SP_rename 'deposit','deposit_detail';
select * from deposit_detail;

----Part B----
--Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table
alter table deposit_detail
SP_rename 'deposit_detail.ADATE','AOPENDATE';
select * from deposit _detail;

--Delete Column AOPENDATE from the DEPOSIT_DETAIL table
alter table deposit_detail
drop column AOPENDATE;
select * from deposit_detail;

--Rename Column CNAME to CustomerName
alter table deposit_detail
SP_rename 'deposit_detail.CNAME','CustomerName';
select * from deposit_detail;


----DELETE, Truncate, Drop Operation----
--Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000
delete from deposit_detail 
where AMOUNT>=4000;
select * from deposit_detail;

--Delete all the accounts CHANDI BRANCH
delete from deposit_detail
where BNAME='CHANDI';
select * from deposit_detail;

--Delete all the accounts having account number (ANO) is greater than 105
delete from deposit_detail
where ANO>105;
select * from deposit_detail;

--Delete all the records of Deposit_Detail table (use truncate)
truncate table deposit_detail;

--Remove Deposit_Detail table(use drop)
drop table deposit_detail;

----Part B----
create table epmloyee_master(EmpNo int, EmpName varchar(25), 