/*1*/
SELECT * FROM employees;
/*2*/
SELECT emp_no, first_name FROM employees;
/*3*/
SELECT DISTINCT first_name from employees;
/*4*/
SELECT DISTINCT first_name  from employees order by first_name;
/*5*/
select distinct first_name from employees order by first_name desc;
/*6*/
select distinct first_name from employees order by first_name asc;
/*7*/
select distinct first_name, last_name from employees;
/*8*/
select distinct first_name, last_name from employees order by first_name, last_name;
/*9*/
select distinct first_name, last_name from employees order by first_name desc, last_name desc;
/*10*/
select distinct first_name, last_name from employees order by first_name asc, last_name asc;
/*11*/
select employees.* from employees limit 100;
/*12*/
select employees.* from employees order by emp_no limit 100;
/*13*/
select employees.* from employees order by emp_no asc limit 100;
/*14*/
select employees.* from employees order by emp_no desc limit 100;
/*15*/
select employees.* from employees where employees.first_name like '%Basil%';
/*16*/
select employees.* from employees where employees.first_name like '%Basil%' and gender like '%M%';
/*17*/
select employees.* from employees where first_name like 'Basil' and gender <> 'M';
/*18*/
select * from employees where first_name = 'Basil' and last_name ='Strooper' and gender = 'M';
/*19*/
select * from employees where first_name like 'Crist%';
/*20*/
select * from employees where first_name like '%zette';
/*21*/
select * from employees where first_name like '%zette' and gender like '%M%';
/*22*/
select * from employees where first_name like '%arvi%';
/*23*/
select * from employees where first_name like '%arvi%' and gender like '%M%';
/*24*/
select * from employees where first_name like 'Yinghua' or first_name like 'Elvis';
/*25*/
select * from employees where (first_name like 'Yinghua' or first_name like 'Elvis') and gender like 'M';
/*26*/
select * from employees where emp_no = 14037; 
/*27*/
select first_name, last_name from employees where emp_no = 14037;
/*28*/
select * from employees where emp_no in (15037,14039, 16039);
/*29*/
select * from employees where emp_no between 14037 and 14047;
/*30*/
select * from employees where emp_no >= 14037 and emp_no <= 14047;
/*31*/
select * from employees where first_name like 'Crist%' and emp_no >485733;
/*32*/ 
select * from employees where first_name like 'Crist%' and emp_no >=485733;
/*33*/
select * from employees where first_name like 'Crist%' and emp_no < 37126;
/*34*/
select * from employees where first_name like 'Crist%' and emp_no <= 37126;
/*35*/
select * from employees where emp_no in (494831, 479832 ,599833,499832 ) and gender in ('M','F') ;
/*36*/
select * from employees where emp_no in (494831, 479832 ,599833,499832 ) and gender in ('M','F') limit 10;
/*37 no entendí muy bien como hacerlo pero ahi quedó*/
select * from employees as emp where emp.emp_no in (494831, 479832 ,599833,499832 ) and emp.gender in ('M','F') ;
/*38 tampoco entendí pero también intenté hacerlo*/
select first_name as 'Nome', emp_no as 'Numero' from employees as emp where emp.emp_no in (494831, 479832 ,599833,499832 ) and emp.gender in ('M','F');
