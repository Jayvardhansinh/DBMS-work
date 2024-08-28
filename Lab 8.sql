create table sales_data(Region varchar(20), Product varchar(15), Amount int, Year int);

insert into sales_data values('North America','watch',1500,2023),
							 ('Europe','mobile',1200,2023),
							 ('Asia','watch',1800,2023),
							 ('North America','TV',900,2024),
							 ('Europe','watch',2000,2024),
							 ('Asia','mobile',1000,2024),
							 ('North America','mobile',1600,2023),
							 ('Europe','TV',1500,2023),
							 ('Asia','Watch',1100,2023),
							 ('North America','watch',1700,2024)

---Part-A---
--Display Total Sales Amount by Region
select sum(Amount) from sales_data group by Region;

--Display Average Sales Amount by Product
select avg(Amount) from sales_data group by Year;

--Display Maximum Sales Amount by Year
select max(Amount) from sales_data group by Year;

--Display Minimum Sales Amount by Region and Year
select min(Amount) from sales_data group by Region , Year;

--Count of Products Sold by Region
select Region,count(Product) from sales_data group by Region;

--Display Sales Amount by Year and Product
select sum(Amount) from sales_data group by Product,Year;

--Display Regions with Total Sales Greater Than 5000
select Region,sum(Amount) from sales_data group by Region having avg(Amount) > 5000;

--Display Products with Average Sales Less Than 10000
select Product,avg(Amount) from sales_data group by Product;

--Display Years with Maximum Sales Exceeding 500
select Year,max(Amount) from sales_data group by Year having max(Amount) > 500;

--Display Regions with at Least 3 Distinct Products Sold
select Region,count(Distinct Product) from sales_data group by Region having count(Distinct Product) < 4;

--Display Years with Minimum Sales Less Than 1000select Year,min(Amount) from sales_data group by Year having min(Amount) < 1000;--Display Total Sales Amount by Region for Year 2023, Sorted by Total Amountselect Region,sum(Amount) from sales_data where Year=2023 group by Region order by(Amount);-----Part-B-------Display Count of Orders by Year and Region, Sorted by Year and Region
select Region,Year,count(Product) from sales_data group by Region Year,Region order by Year,Region;

--Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select Region,max(Amount) from sales_data group by Region having(Amount)!=1000 order by Region;

--Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select Year,sum(AMOUNT) from sales_data group by Year having Sum(AMOUNT)<1000;

--Display Top 3 Regions by Total Sales Amount in Year 2024
select top 3 Region,sum(Amount) as Totalsale from sales_data where Year=2024 group by Region;