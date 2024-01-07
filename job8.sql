CREATE DATABASE IF NOT EXISTS SomeCompany;
CREATE TABLE Employees
(
	employee_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	birthdate DATE,
	position VARCHAR(255),
	department_id INT FOREIGN KEY NOT NULL
);
CREATE TABLE Departments
(
	department_id INT PRIMARY KEY NOT NULL,
	department_name VARCHAR(255),
	department_head INT FOREIGN KEY NOT NULL,
	location VARCHAR(255)
);
INSERT INTO Employees (employee_id, first_name, last_name, birthdate, position, department_id)
	VALUES
	(13, John, Wick, 1991-06-24, CEO, 1),
	(),
	(),
	...
	();
SELECT last_name, position FROM Employees;
UPDATE Employees SET position = 'Clown' WHERE 'id' = 1;
DELETE FROM Employees WHERE 'id' = 1;
SELECT last_name, department_name, location FROM Employees NATURAL JOIN Departments;
SELECT first_name, last_name, department_name FROM Employees NATURAL JOIN Departments GROUP BY department_name;
SELECT department_name, first_name, last_name FROM Employees JOIN Departments ON Employees.employee_id = Departments.department_head WHERE department_id IS NOT NULL GROUP BY department_name ORDER BY department_name ASC;
INSERT INTO Departments (department_id, department_name, department_head, location)
	VALUES
	(4, 'Marketing', 13, 'third Floor');
UPDATE Employees SET position = 'Marketing Manager', department_id = 4 WHERE id = 13;
CREATE TABLE Project
(
	project_id INT PRIMARY KEY NOT NULL,
	project_name VARCHAR(255),
	start_date DATE,
	end_date DATE,
	department_id INT FOREIGN KEY NOT NULL
);