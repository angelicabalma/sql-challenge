drop table Departments;
drop table Dept_Manager;
drop table Dept_Emp;
drop table Titles;
drop table Salaries; 
drop table Employees;


CREATE TABLE Departments (
    Dept_no varchar Primary key,
    Dept_name varchar NOT NULL);

select * from Departments;

CREATE TABLE Dept_Emp (
	Emp_no int  NOT NULL,
    Dept_no varchar not null,
    From_date date   NOT NULL,
    To_date date   NOT NULL,
	foreign key (Emp_no) references Employees(Emp_no),
	foreign key (Dept_no) references Departments(Dept_no));
	
select * from Dept_Emp;

CREATE TABLE Dept_Manager (
    Dept_no varchar   NOT NULL,
    Emp_no int   NOT NULL,
    From_date date   NOT NULL,
    To_date date   NOT NULL,
	foreign key (Dept_no) references Departments(Dept_no),
	foreign key (Emp_no) references Employees(Emp_no)
);

select * from Dept_Manager;

CREATE TABLE Employees (
    Emp_no int primary key,
    Birthdate date   NOT NULL,
    First_name varchar   NOT NULL,
    Last_Name varchar   NOT NULL,
    Gender varchar   NOT NULL,
    Hire_Date date   NOT NULL
);

select * from Employees;

CREATE TABLE Salaries (
    Emp_no int NOT NULL,
    Salary int   NOT NULL,
    From_date date   NOT NULL,
    To_date date   NOT NULL,
	Foreign key (Emp_no) references Employees(Emp_no)
	
);
select * from Salaries;

CREATE TABLE Titles (
    Emp_no int   NOT NULL,
    Title varchar   NOT NULL,
    From_date date   NOT NULL,
    To_date date   NOT NULL,
	Foreign key (Emp_no) references Employees(Emp_no)
);

select * from Titles;

