use new;
create table department (
dept_no int primary key ,
Dname varchar(10),
loc varchar(10)
);
create table Employee(
dept_no int,
emplo_no int ,
Ename varchar(10),
sal int  ,
foreign key (dept_no) references department(dept_no),
primary key(emplo_no,dept_no)
);
alter table Employee add check (Ename=(upper(Ename)));
alter table department add check (dept_no is not null);
alter table Employee add unique(sal);
alter table Employee add (foreign key(dept_no) references department(dept_no) ON update CASCADE ON DELETE SET NULL);









