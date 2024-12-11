--Write a SQL query to retrieve the emp_id, last_name, and salary of employees whose salary is between 2,000 and 5,000 and do not have a manager ID of 101 or 200.
select employee_id, last_name,salary from employees where salary between 2000 and 5000 and manager_id not in (101,200);

--Write a SQL query to display the employee names along with their respective department names Use aliases for table names for better readability.

select e.employee_id,d.department_name from employees e, departments d 
where e.department_id = d.department_id
order by d.department_name;
-- another solution

select e.employee_id,d.department_name from employees e inner join  departments d 
on e.department_id = d.department_id
order by d.department_name;

--Write a SQL query to find the number of employees and the average salary for each department. Ensure that the results are grouped by department ID
select department_id, count(*) "number of employees",AVG(salary) "average salary"  from employees
group by department_id;