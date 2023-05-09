--* One to Many Relationship
--* Video Tutorial: https://youtu.be/_Nq0pNfeaRs

-- CREATE DATABASE mycompany; 

-- \c mycompany

-- CREATE TABLE departments (
--     id INT PRIMARY KEY,
--     name VARCHAR(50)
-- );

-- CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     salary DECIMAL(10,2),
--     department_id INT,
--     FOREIGN KEY (department_id) REFERENCES departments(id)
-- );

-- INSERT INTO departments (id, name) VALUES (1, 'SALES');
-- INSERT INTO departments (id, name) VALUES (2, 'MARKETING');

-- INSERT INTO employees (id, name, age, salary, department_id) VALUES (1, 'John', 25, 50000, 1);
-- INSERT INTO employees (id, name, age, salary, department_id) VALUES (2, 'Jane', 30, 60000, 1);
-- INSERT INTO employees (id, name, age, salary, department_id) VALUES (3, 'Bob', 35, 70000, 2);

-- SELECT * FROM departments;

-- SELECT * FROM employees WHERE department_id = 1;












--* One to One Relationship

-- CREATE DATABASE mycompany;

-- \c mycompany

-- CREATE TABLE departments (
--     id INT PRIMARY KEY,
--     name VARCHAR(50)
-- );

-- CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     salary DECIMAL(10,2),
--     department_id INT,
--     manager_id INT NULL,
--     FOREIGN KEY (department_id) REFERENCES departments(id),
--     FOREIGN KEY (manager_id) REFERENCES employees(id)
-- );

-- INSERT INTO departments (id, name) VALUES (1, 'Sales');
-- INSERT INTO departments (id, name) VALUES (2, 'Marketing');

-- INSERT INTO employees (id, name, age, salary, department_id, manager_id) VALUES (1, 'John', 25, 50000, 1, NULL);
-- INSERT INTO employees (id, name, age, salary, department_id, manager_id) VALUES (2, 'Jane', 30, 60000, 1, 1);

-- UPDATE employees SET manager_id = 2 WHERE id = 1;

-- SELECT * FROM departments;

-- SELECT * FROM employees;

-- SELECT * FROM employees WHERE manager_id = 2;















--* Many to Many Relationship

-- CREATE DATABASE mycompany;

-- \c mycompany

-- CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     salary DECIMAL(10,2)
-- );

-- CREATE TABLE projects (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     description TEXT
-- );

-- CREATE TABLE employee_projects (
--     employee_id INT,
--     project_id INT,
--     PRIMARY KEY (employee_id, project_id),
--     FOREIGN KEY (employee_id) REFERENCES employees(id),
--     FOREIGN KEY (project_id) REFERENCES projects(id)
-- );

-- INSERT INTO employees (id, name, age, salary) VALUES (1, 'John', 25, 50000);
-- INSERT INTO employees (id, name, age, salary) VALUES (2, 'Jane', 30, 60000);

-- INSERT INTO projects (id, name, description) VALUES (1, 'Website Redesign', 'Redesigning company website');
-- INSERT INTO projects (id, name, description) VALUES (2, 'Mobile App Development', 'Developing a mobile app for iOS and Android');

-- INSERT INTO employee_projects (employee_id, project_id) VALUES (1, 1);
-- INSERT INTO employee_projects (employee_id, project_id) VALUES (1, 2);
-- INSERT INTO employee_projects (employee_id, project_id) VALUES (2, 1);

-- SELECT * FROM employee_projects;
-- SELECT * FROM projects;
-- SELECT * FROM employees;
-- SELECT * FROM employee_projects WHERE project_id = 1;
-- SELECT * FROM employee_projects WHERE project_id = 2;

