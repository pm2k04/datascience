create database company_db;
use company_db;
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT
);
CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);
CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(5,2)
);
CREATE TABLE emp_details (
    emp_idno INT PRIMARY KEY,
    emp_fname VARCHAR(50),
    emp_lname VARCHAR(50),
    emp_dept INT
);
CREATE TABLE item_mast (
    pro_id INT PRIMARY KEY,
    pro_name VARCHAR(50),
    pro_price DECIMAL(10,2),
    pro_com INT
);
-- Insert into Customer
INSERT INTO customer VALUES
(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007),
(3001,'Brad Guzan','London',NULL,5005);

-- Insert into Orders
INSERT INTO orders VALUES
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.4,'2012-10-10',3009,5003),
(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.6,'2012-04-25',3002,5001);

INSERT INTO salesman VALUES
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12);

INSERT INTO emp_details VALUES
(127323,'Michale','Robbin',57),
(526689,'Carlos','Snares',63),
(843795,'Enric','Dosio',57),
(328717,'Jhon','Snares',63),
(444527,'Joseph','Dosni',47),
(659831,'Zanifer','Emily',47),
(847674,'Kuleswar','Sitaraman',57),
(748681,'Henrey','Gabriel',47),
(555935,'Alex','Manuel',57),
(539569,'George','Mardy',27),
(733843,'Mario','Saule',63),
(631548,'Alan','Snappy',27),
(839139,'Maria','Foster',57);

INSERT INTO item_mast VALUES
(101,'Motherboard',3200,15),
(102,'Keyboard',450,16),
(103,'ZIP drive',250,14),
(104,'Speaker',550,16),
(105,'Monitor',5000,11),
(106,'DVD drive',900,12),
(107,'CD drive',800,12),
(108,'Printer',2600,13),
(109,'Refill cartridge',350,13),
(110,'Mouse',250,12);

SELECT customer_id, cust_name, city, grade, salesman_id
FROM customer
WHERE city = 'New York' OR grade <= 100;
SELECT customer_id, cust_name, city, grade, salesman_id
FROM customer
WHERE city = 'New York' AND grade > 100;
SELECT ord_no, purch_amt,
       (purch_amt/6000)*100 AS achieved_percent,
       (100 - (purch_amt/6000)*100) AS unachieved_percent
FROM orders
WHERE purch_amt > (0.5*6000);
SELECT SUM(purch_amt) AS total_purchase_amount
FROM orders;
SELECT customer_id, MAX(purch_amt) AS max_purchase
FROM orders
GROUP BY customer_id;
SELECT AVG(pro_price) AS avg_price
FROM item_mast;
CREATE TABLE employees (
    employee_id     INT PRIMARY KEY AUTO_INCREMENT,
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    job_id          VARCHAR(20) NOT NULL,
    department_id   INT,
    manager_id      INT,
    salary          DECIMAL(10,2) NOT NULL,
    commission_pct  DECIMAL(5,2),
    hire_date       DATE NOT NULL
);
CREATE TABLE departments (
    department_id     INT PRIMARY KEY AUTO_INCREMENT,
    department_name   VARCHAR(100) NOT NULL,
    location          VARCHAR(100)
);

INSERT INTO employees (employee_id, first_name, last_name, job_id, department_id, manager_id, salary, commission_pct, hire_date) VALUES
(101, 'John', 'Smith',   'IT_PROG',  60, 100, 60000.00, NULL,        '2019-03-15'),
(102, 'Sara', 'Khan',    'MK_MAN',   20, 100, 85000.00, 0.05,        '2018-07-22'),
(103, 'Raj',  'Patel',   'FI_MGR',   10, NULL, 95000.00, 0.10,       '2017-01-10'),
(104, 'Emily','Brown',   'HR_REP',   40, 101, 45000.00, NULL,        '2020-11-05'),
(105, 'David','Lee',     'SA_REP',   80, 102, 72000.00, 0.07,        '2021-06-18'),
(106, 'Anita','Shah',    'IT_PROG',  60, 101, 58000.00, NULL,        '2022-02-25'),
(107, 'Michael','Clark', 'SA_MAN',   80, 103, 90000.00, 0.12,        '2016-09-12'),
(108, 'Priya','Mehta',   'MK_REP',   20, 102, 50000.00, NULL,        '2021-01-30'),
(109, 'James','Taylor',  'AC_ACCOUNT',110,103, 55000.00, NULL,       '2019-12-20'),
(110, 'Sophia','Wilson', 'FI_ACCOUNT',10, 103, 60000.00, NULL,       '2023-04-01');

INSERT INTO departments (department_id, department_name, location) VALUES
(10,  'Finance',      'New York'),
(20,  'Marketing',    'Chicago'),
(40,  'Human Resources', 'Toronto'),
(60,  'IT',           'San Francisco'),
(80,  'Sales',        'London'),
(100, 'Executive',    'New York'),
(110, 'Accounting',   'Boston');


SELECT first_name, last_name, employee_id, job_id
FROM employees e
JOIN departments d USING (department_id)
WHERE d.location = 'Toronto';
SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE job_id <> 'MK_MAN'
AND salary < (
SELECT AVG(salary) -- or MIN/MAX; problem commonly uses AVG as a threshold
FROM employees
WHERE job_id = 'MK_MAN'
);
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e
JOIN departments d USING (department_id)
WHERE e.department_id IN (80, 40);
SELECT d.department_name,
ROUND(AVG(e.salary), 2) AS avg_salary,
SUM(CASE WHEN e.commission_pct IS NOT NULL AND e.commission_pct > 0 THEN 1 ELSE 0 END) AS commission_count
FROM employees e
JOIN departments d USING (department_id)
GROUP BY d.department_name
ORDER BY d.department_name;

SELECT first_name, last_name, department_id, job_id
FROM employees
WHERE job_id = (
SELECT job_id FROM employees WHERE employee_id = 169
) AND employee_id <> 169;

SELECT employee_id, first_name, last_name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT e.department_id, e.first_name AS name, e.job_id, d.department_name
FROM employees e
JOIN departments d USING (department_id)
WHERE d.department_name = 'Finance';
SELECT first_name, last_name, salary
FROM employees
WHERE salary < (SELECT salary FROM employees WHERE employee_id = 182);

CREATE PROCEDURE CountEmployeesByDept()
BEGIN
SELECT d.department_id,
d.department_name,
COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e USING (department_id)
GROUP BY d.department_id, d.department_name
ORDER BY d.department_id
END $$
DELIMITER ;
CREATE PROCEDURE AddNewEmployee(
IN p_first_name VARCHAR(50),
IN p_last_name VARCHAR(50),
IN p_job_id VARCHAR(20),
IN p_department_id INT,
IN p_manager_id INT,
IN p_salary DECIMAL(10,2),
IN p_commission_pct DECIMAL(5,2)
)
BEGIN
INSERT INTO employees(first_name, last_name, job_id, department_id, manager_id, salary, commission_pct)
VALUES (p_first_name, p_last_name, p_job_id, p_department_id, p_manager_id, p_salary, p_commission_pct)
END $$
DELIMITER ;
CREATE PROCEDURE DeleteEmployeesByDept(IN p_department_id INT)
BEGIN
DELETE FROM employees WHERE department_id = p_department_id
END $$
DELIMITER ;
CREATE PROCEDURE GetTopPaidEmployees()
BEGIN
SELECT e.*
FROM employees e
JOIN (
SELECT department_id, MAX(salary) AS max_sal
FROM employees
GROUP BY department_id
) m ON m.department_id = e.department_id AND m.max_sal = e.salary
ORDER BY e.department_id, e.employee_id
END $$
DELIMITER ;
CREATE PROCEDURE AssignManagerToDepartment(
IN p_department_id INT,
IN p_manager_id INT
)
BEGIN
UPDATE employees
SET manager_id = p_manager_id
WHERE department_id = p_department_id
END $$
DELIMITER ;

use company_db;

CREATE TABLE employes (
    name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);


INSERT INTO employees (name, age, department, salary, joining_date) VALUES
('Alice Johnson', 30, 'HR', 60000, '2019-05-15'),
('Bob Smith', 40, 'IT', 80000, '2015-08-20'),
('Charlie Brown', 35, 'Finance', 75000, '2018-11-30'),
('David White', 28, 'IT', 72000, '2021-01-10'),
('Emma Wilson', 32, 'Marketing', 65000, '2017-03-25'),
('Franklin Adams', 45, 'Finance', 90000, '2010-07-12'),
('Grace Lee', 29, 'HR', 58000, '2020-06-05'),
('Henry Ford', 50, 'IT', 95000, '2008-12-15'),
('Isabella Martinez', 38, 'Marketing', 70000, '2016-09-18'),
('Jack Carter', 27, 'Finance', 68000, '2022-04-10');






  











