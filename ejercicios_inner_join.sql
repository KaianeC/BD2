/*1*/
select employees.first_name, employees.last_name, salaries.salary, salaries.from_date, salaries.to_date
from employees inner join salaries on employees.emp_no = salaries.emp_no
order by from_date asc, to_date asc;
/*2*/
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name, dept_emp.from_date, dept_emp.to_date
from employees inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on departments.dept_no = dept_emp.dept_no; 
/*3*/
select employees.emp_no, employees.first_name, departments.dept_name from employees
 left join dept_manager on employees.emp_no = dept_manager.emp_no 
 left join departments on dept_manager.dept_no= departments.dept_no
 where employees.emp_no IN (110022, 110085, 10006);
/*4*/
select employees.first_name, employees.last_name, departments.dept_name from employees 
right join dept_manager on employees.emp_no = dept_manager.emp_no
right join departments on departments.dept_no = dept_manager.dept_no;
/*RESULTADOS DE LA CONSULTA (4 PRIMEROS RESULTADOS)
first_name  last_name   dept_name
	NULL    NULL 		Compras internas
	Tonny	Butterworth	Customer Service
	Marjo	Giarratana	Customer Service
	Xiaobin	Spinelli	Customer Service