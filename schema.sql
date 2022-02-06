CREATE TABLE departments (
    Dept_No varchar(50)   NOT NULL,
    Dept_Name varchar(50)   NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Employees (
    Emp_No int   NOT NULL,
    Birth_Date date   NULL,
    First_Name varchar(50)   NULL,
    Last_Name varchar(50)   NULL,
    Gender varchar(50)   NULL,
    Hire_Date date   NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);
CREATE TABLE Salaries (
    Emp_No int   NOT NULL,
    Salary float   NULL,
    From_Date date   NULL,
    To_Date date   NULL
);

CREATE TABLE Titles (
    Emp_No int   NOT NULL,
    Title varchar(100)   NULL,
    From_Date date   NULL,
    To_Date date   NULL
);

CREATE TABLE XRef_Employee_Department (
    Emp_No int   NOT NULL,
    Dept_No varchar(50)   NULL,
    From_Date date   NULL,
    To_Date date   NULL
);

CREATE TABLE XRef_Manager_Department (
    Emp_No int   NOT NULL,
    Dept_No varchar(50)   NULL,
    From_Date date   NULL,
    To_Date date   NULL
);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_EmpNo FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_EmpNo FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE XRef_Employee_Department ADD CONSTRAINT fk_XRef_Employee_Department_EmpNo FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE XRef_Employee_Department ADD CONSTRAINT fk_XRef_Employee_Department_DeptNo FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE XRef_Manager_Department ADD CONSTRAINT fk_XRef_Manager_Department_EmpNo FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE XRef_Manager_Department ADD CONSTRAINT fk_XRef_Manager_Department_DeptNo FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

Select * From Departments