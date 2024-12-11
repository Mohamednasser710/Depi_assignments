--Create a simple view named vw_employee_details that displays the first name, last name, and department name of employees.
create view vw_employee_details 
as select e.first_name,e.last_name,d.department_name 
from employees e inner join departments d 
on e.department_id = d.department_id;

select * from vw_employee_details;
-- another bonus add first and last name as employee_name
create view vw_employee_details2 
as select e.first_name +' '+e.last_name as "employee name",d.department_name 
from employees e inner join departments d 
on e.department_id = d.department_id;

select* from vw_employee_details2;

--Modify the existing view vw_work_hrs to only include employees working in department number 5.
create OR alter VIEW vw_work_hrs AS
select fname, lname, pname, hours
from work_hrs
where department_id = 5;

--Create a view named vw_high_status_suppliers to display all suppliers with a status greater than 15, and ensure that any updates or inserts through the view still meet the status condition.
Create view vw_high_status_suppliers
as select * from suppliers
where status > 15
with check option;



