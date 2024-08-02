-- Trab1_DB
-- pergunta 1.

use db_book2;
show databases;
show tables;

-- pergunta 2.
select Dname from department;

-- pergunta 3.
-- select * from department;
-- select Dnumber from department where dname='research';
select * from employee where Dno=5;

-- pergunta 4.
select * from department;
insert into department (Dname, Dnumber, Mgr_ssn) values ('datascience', 7, 333445555);

-- pergunta 5.
select * from employee;
insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, dno)
values ('Jack', 'D', 'Aclysson', 741369852, '1945-06-14', '01 Itapaje, ceara CE', 'M', 30000, 333445555, 7 );
insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, dno)
values ('Monkey', 'D', 'Luffy', 789123654, '2000-10-30', '05 Fortaleza, ceara CE', 'M', 45000, 333445555, 7 );
insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, dno)
values ('Leandro', 'B', 'Adegas', '887776665', '1998-11-26', '41 Itapajé CE', 'M', '15000', '333445555', 4);
select * from employee where Fname = 'Leandro';
insert into employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, dno)
values ('Messias', 'D', 'Adegas', '999888776', '2000-01-03', '41 Itapajé CE', 'M', '30000', '333445555', 1);
describe employee;


alter table employee add Desempenho varchar(50);
alter table employee modify column Desempenho char(1);
alter table employee drop column Desempenho;

-- pergunta 6.
update employee set Salary=Salary*1.235 where Dno=1 and Dno=4 and Dno=5 and Dno=7;
select * from employee;

-- pergunta 7.
update employee set Address='Itapajé, CE' where Dno = 4;