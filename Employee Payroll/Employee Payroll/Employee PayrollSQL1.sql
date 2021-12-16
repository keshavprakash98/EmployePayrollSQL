create database payroll_service;

use payroll_service

/*UC2*/
create table empolye_payroll
(
  id      INT identity (1,1) primary key,
  name    VARCHAR(150) NOT NULL,
  salary  float Not NULL,
  start   DATE NOT NULL,

);
exec sp_help employee_payroll;

/*UC3*/
insert into empolye_payroll(name,salary,start) values
('Keshav' ,400000 ,'2021-01-15'),
('ram' , 390000 ,'2021-02-15'),
('shyam' ,380000 ,'2021-03-15')
('pooja' ,350000, '2021-04-15');

DESCRIBE employee_payroll;

/*UC4*/
select * from empolye_payroll;

/*UC5*/
select name ,salary from employee_payroll where name = Keshav;
select * from employee_payroll
where start between cast ('01-01-2021' as date) and get date();

/*UC6*/
alter table employee_payroll and Gender Char(1);
update employee_payroll set Gender = 'M' where name ='Keshav' or name = 'ram' or name ='shyam';
update employee_payroll set Gender = 'F' where name ='pooja';



