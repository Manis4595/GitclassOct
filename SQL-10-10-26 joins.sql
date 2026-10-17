create table Employee_details(empid int, empname varchar(30), empsalary decimal(6,2), empjoindate date);
use sep26;
select* from product_dataset;
select* from sales_dataset;

select p.productid, p.productname, p.unitprice, s.customername, s.salesamount
from product_dataset as p inner join sales_dataset as s on p.productid=s.productid;
select p.productid, p.productname, p.unitprice, s.customername, s.salesamount
from product_dataset as p right join sales_dataset as s on p.productid=s.productid;
select p.productid, p.productname, p.unitprice, s.customername, s.salesamount
from product_dataset as p left join sales_dataset as s on p.productid=s.productid;
select p.productid, p.productname, p.unitprice, s.customername, s.salesamount
from product_dataset as p left join sales_dataset as s on p.productid=s.productid;
select* from customers_dataset;
select* from orders_dataset;
select c.customerid, c.customername, c.city, o.customerid, o.amount
from customers_dataset as c inner join orders_dataset as o on c.customerid=o.customerid;
select c.customerid, c.customername, o.customerid, o.amount
from customers_dataset as c right join orders_dataset as o on c.customerid=o.customerid;
select c.customerid, c.customername, o.customerid, o.amount
from customers_dataset as c left join orders_dataset as o on c.customerid=o.customerid;
select* from colors_dataset;
select* from clothes_dataset;
select * from employee_dataset;
select e.emp_name as employee, m.emp_name as manager from employee_dataset as e join employee_dataset as m on m.emp_id=e.manager_id;
select cl.product_name, clr.color_name from clothes_dataset as cl cross join colors_dataset as clr;
