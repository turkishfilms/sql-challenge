

CREATE TABLE Depts (
    dept_no VARCHAR NOT NULL;
    dept_name VARCHAR NOT NULL;
    PRIMARY KEY(dept_no)
)

CREATE TABLE Employees(
    emp_no INTEGER NOT NULL;
    emp_title_id VARCHAR NOT NULL;
    birth_date DATE NOT NULL;
    first_name VARCHAR NOT NULL;
    last_name VARCHAR NOT NULL;
    sex VARCHAR NOT NULL;
    hire_date VARCHAR NOT NULL;
    PRIMARY KEY(emp_no)
    FOREIGN KEY(emp_title_id) REFERENCES Titles (title_id);
    
)

CREATE TABLE Managers(
    Manager_id INTEGER NOT NULL;
    dept_no INTEGER NOT NULL; 
    emp_no INTEGER NOT NULL;
    PRIMARY KEY(Manager_id)
    FOREIGN KEY(dept_no) REFERENCES Depts (dept_no);
    FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);

)

CREATE TABLE Salaries(
    Salary_id INTEGER NOT NULL;
    emp_no INTEGER NOT NULL;
    salary INTEGER NOT NULL;
    PRIMARY KEY(Salary_id)
    FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);

)

CREATE TABLE Titles(
    title_id INTEGER NOT NULL;
    title VARCHAR NOT NULL;
    PRIMARY KEY(title_id)
)

CREATE TABLE Dept_Employees(
    Dept_Employee_id INTEGER NOT NULL;
    emp_no INTEGER NOT NULL;
    dept_no INTEGER NOT NULL;
    PRIMARY KEY(Dept_Employee_id)
    FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);
    FOREIGN KEY(dept_no) REFERENCES Depts (dept_no);
)

CREATE TABLE TNFDept(

)



NOT NULL
FOREIGN KEY(Gym_ID) REFERENCES Gym (Gym_ID);