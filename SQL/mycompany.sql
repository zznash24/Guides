--* Video Tutorial: https://youtu.be/_Nq0pNfeaRs

CREATE DATABASE mycompany; 

\c mycompany

CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (id, name) VALUES (1, 'SALES');
INSERT INTO departments (id, name) VALUES (2, 'MARKETING');

INSERT INTO employees (id, name, age, salary, department_id) VALUES (1, 'John', 25, 50000, 1);
INSERT INTO employees (id, name, age, salary, department_id) VALUES (2, 'Jane', 30, 60000, 1);
INSERT INTO employees (id, name, age, salary, department_id) VALUES (3, 'Bob', 35, 70000, 2);

SELECT * FROM departments;

SELECT * FROM employees WHERE department_id = 1;