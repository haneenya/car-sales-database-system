select * from client;
select * from employee;
select * from sale_invoice;
select * from maintenance_invoice;
select * from pieces;

-- join example
select s.Sales_ID, c.first_name, c.last_name, s.Cost
from sale_invoice s
join client c on s.CL_ID = c.client_id;

-- employees by department
select department, count(*) 
from employee
group by department;

-- most expensive sales
select * from sale_invoice
order by Cost desc;
