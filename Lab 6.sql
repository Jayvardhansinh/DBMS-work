--Display the result of 5 multiply by 30.
select 5*30;

--Find out the absolute value of -25, 25, -50 and 50.
select abs(-25),abs(25),abs(-50),abs(50);

--Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2
select ceiling(25.2),ceiling(25.7),ceiling(-25.2);

--Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select floor(25.2),floor(25.7),floor(-25.2);

--Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2,5%3;

--Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2), power(4,3);

--Find out the square root of 25, 30 and 50.
select sqrt(25), sqrt(30), sqrt(50);

--Find out the square of 5, 15, and 25
select square(5), square(15), square(25);

--Find out the value of PI.select pi();-- Find out round value of 157.732 for 2, 0 and -2 decimal pointsselect round(157.732,2), round(157.732,0), round(157.732,-2);-- Find out exponential value of 2 and 3.select exp(2), exp(3);--Find out logarithm having base e of 10 and 2.select log(10), log(2);--Find out logarithm having base b having value 10 of 5 and 100.
select log10(5), log10(100);

--Find sine, cosine and tangent of 3.1415.
select sin(3.1415) as sin,cos(3.1415) as cos,tan(3.1415) as tan;

--Find sign of -25, 0 and 25.
select sign(-25),sign(0),sign(25);

--Generate random number using function.
select rand();



------STRING FUNCTION------

--Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blankselect len(null),len('Hello'),len('');

--Display your name in lower & upper case.
select lower('JAYVARDHANSINH'), upper('jayvardhansinh');

--Display first three characters of your name.
select substring('Jayvardhansinh',1,3);

--Display 3rd to 10th character of your name.
select substring('Jayvardhansinh',3,8);

--Write a query to convert  abc123efg  to  abcXYZefg  &  abcabcabc  to  ab5ab5ab5  using REPLACE.
select replace('abc123efg','123','XYZ'),replace('abcabcabc','c','5');

--Write a query to display ASCII code for  a , A , z , Z , 0, 9.
select ascii('a'), ascii('A'), ascii('z'), ascii('Z'), ascii(0), ascii(9);

--Write a query to display character based on number 97, 65,122,90,48,57.
select char(97),char(65),char(122),char(90),char(48), char(57);

--Write a query to remove spaces from left of a given string  hello world  .
select ltrim('hello world     ');

--Write a query to remove spaces from right of a given string   hello world  .
select rtrim(' hello world ');

--Write a query to display first 4 & Last 5 characters of  SQL Server .
select left('SQL Server',4),right('SQL Server',5);

--Write a query to convert a string  1234.56  to number (Use cast and convert function).
select cast('1234.56' as decimal(6,2)),convert(decimal(6,2),'1234.56');

--Write a query to convert a float 10.58 to integer (Use cast and convert function).
select cast(10.58 as int),convert(int,10.58);

--Put 10 space before your name using function.
select space(10)+'Jayvardhansinh';

--Combine two strings using + sign as well as CONCAT ().
select 'name' + 'surname',concat('name','surname');

--Find reverse of  Darshan .
select reverse('Darshan');

--Repeat your name 3 times.
select replicate('Jayvardhansinh',3);



------Date Function------
--Write a query to display the current date & time. Label the column Today_Date.
select getdate() as currentdate;

--Write a query to find new date after 365 day with reference to today.
select dateadd(D,365,getdate()) as date_after_oneyear;

--Display the current date in a format that appears as may 5 1994 12:00AM.
select convert(varchar(50),getdate(),100);

--Display the current date in a format that appears as 03 Jan 1995.
select convert(varchar(50),getdate(),106);

--Display the current date in a format that appears as Jan 04, 96.
select convert(varchar(50),getdate(),107);

--Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'2008-12-31','2009-03-31');

--Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10
SELECT DATEDIFF(YEAR,'2010-09-14','2012-01-25');

--Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR,'2012-01-25 7:00','2012-01-26 10:30');

--Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('2016-05-12'),MONTH('2016-05-12'),YEAR('2016-05-12');
