-- Завдання 3
CREATE DATABASE HRDepartment;

USE HRDepartment;

CREATE TABLE employees (
    id INT NOT NULL,    
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    gender VARCHAR(4) NOT NULL,    
    birth_date DATE NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE departments (
	emp_id INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employees (id) ON DELETE CASCADE,
    PRIMARY KEY (dept_no),
    UNIQUE KEY (dept_name)
);

CREATE TABLE salaries (
    emp_id INT NOT NULL,
    salary DOUBLE (10,2) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employees (id) ON DELETE CASCADE,
    PRIMARY KEY (emp_id, from_date)
) ;

INSERT into employees 
(id, birth_date, first_name, last_name, gender, hire_date  )
VALUES
(001, STR_TO_DATE('24-May-1982', '%d-%M-%Y' ), 'Igor', 'Petrov', 'M', STR_TO_DATE('24-May-2005', '%d-%M-%Y')),
(002, STR_TO_DATE('19-October-1982', '%d-%M-%Y' ), 'Ivan', 'Todov', 'M', STR_TO_DATE('21-June-2012', '%d-%M-%Y')),
(003, STR_TO_DATE('01-July-1994', '%d-%M-%Y' ), 'Anna', 'Vetrova', 'F', STR_TO_DATE('08-February-2016', '%d-%M-%Y'));

INSERT into departments 
(emp_id, dept_no, dept_name)
VALUES 
(001, 1,'Sales'),
(002, 2, 'Management'),
(003, 3, 'IT');

INSERT into salaries 
(emp_id, salary, from_date, to_date)
VALUES 
(001, 10000.00, '2023-01-01', NOW()),
(002, 8000.00, '2023-01-01', NOW()),
(003, 15000.00, '2023-01-01', NOW());

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM salaries;