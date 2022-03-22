
SELECT * FROM employees;


SELECT employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id
FROM employees;


SELECT
    employee_id,
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id
FROM
    employees;
	

SELECT employee_id, first_name, last_name, salary, department_id
FROM employees;


SELECT employee_id, first_name, last_name, department_id, salary
FROM employees;


SELECT employee_id, first_name, last_name, department_id, salary
FROM employees
WHERE department_id = 80;


SELECT employee_id, first_name, last_name, department_id, salary
FROM employees
WHERE department_id = 80
ORDER BY salary;


SELECT employee_id, first_name, last_name, department_id, salary
FROM employees
WHERE department_id = 80
ORDER BY salary ASC;


SELECT employee_id, first_name, last_name, department_id, salary
FROM employees
WHERE department_id = 80
ORDER BY salary DESC;


SELECT department_id, salary
FROM employees
WHERE department_id = 80;


SELECT department_id, sum(salary)
FROM employees
WHERE department_id = 80
GROUP BY department_id;


SELECT department_id, sum(salary) as total_salary
FROM employees
WHERE department_id = 80
GROUP BY department_id;

