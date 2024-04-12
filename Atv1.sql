-- Ativiade1
-- pergunta 1.

create database atv1;
use atv1;
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


-- pergunta 6.
update employee set Salary=Salary*1.235;
select * from employee;

-- pergunta 7.
update employee set Address='Itapajé, CE' where Dno = 4;