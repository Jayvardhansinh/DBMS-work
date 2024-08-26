select * from deposit;

select * from borrow;

select * from customers;

select actno, cname, amount from deposit;

select loanno, amount from borrow;

select * from borrow where bname='andheri';

select actno, amount from deposit where actno=106;

select cname from borrow where amount>5000;

select cname from deposit where adate>1996-12-01;

select cname from deposit where actno<105;

select cname from customers where city in('delhi','nagpur');
select cname from customers where city='delhi' or city='nagpur';

select cname, bname from deposit where amount>4000 and actno<105;

select cname from borrow where amount>=3000 and amount<=8000;
select cname from borrow where amount between 3000 and 8000;

select cname from deposit where bname <>'andheri';
select cname from deposit where bname!= 'andheri';

select actno, cname, amount from deposit where bname in('ajni','karolbagh','m.g.road') and actno<104;

--part b--

select * from deposit where actno between 101 and 105;

select * from deposit where actno between 101 and 103 and amount>1000;

select top 5 loanno, cname from borrow where bname<> 'andheri';
select top 5 loanno, cname from borrow where bname!= 'andheri';

select distinct city from customers;

select distinct bname from branch;

--part c--

select top 50 percent * from borrow;

select top 10 percent amount from deposit;

select top 25 percent cname from deposit where amount>5000;

select top 10 percent amount from borrow;