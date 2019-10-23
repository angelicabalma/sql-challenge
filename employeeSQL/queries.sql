--Queries

-- Act 1 

select employees.Emp_no, employees.Last_name, employees.First_name, employees.Gender, salaries.salary
from employees
inner join salaries on
employees.Emp_no=salaries.Emp_no;


-- Act 2
select emp_no, last_name, first_name, hire_date
from employees 
where hire_date between '1986-01-01' and '1986-12-31';

--Act 3
select dept_manager.Dept_no, departments.Dept_name, dept_manager.Emp_no, dept_manager.From_date, dept_manager.To_date, employees.Last_name, employees.First_name
from dept_manager
inner join departments 
on departments.Dept_no=dept_manager.Dept_no
inner join employees 
on employees.Emp_no=dept_manager.Emp_no;

-- Act 4
select employees.Emp_no, employees.Last_name, employees.First_name, departments.Dept_name 
from employees
inner join dept_emp
on dept_emp.Emp_no=employees.Emp_no
inner join departments
on departments.Dept_no=dept_emp.Dept_no;

-- Act 5
select employees.last_name, employees.First_name
from employees
where First_name = 'Hercules'
and Last_name like 'B%';

-- Act 6
select dept_emp.Dept_no, dept_emp.Emp_no, employees.Last_name, employees.First_name, departments.Dept_name
from employees
inner join dept_emp
on dept_emp.Emp_no = employees.Emp_no
inner join departments
on departments.Dept_no = dept_emp.Dept_no
where Dept_name = 'Sales';

--Act 7
select dept_emp.Dept_no, dept_emp.Emp_no, employees.Last_name, employees.First_name, departments.Dept_name
from employees
inner join dept_emp
on dept_emp.Emp_no = employees.Emp_no
inner join departments
on departments.Dept_no = dept_emp.Dept_no
where Dept_name in  ('Sales', 'Development');


-- Act 8 
select Last_name, count(Last_name)
from employees
group by Last_name
order by count(Last_name) desc;




