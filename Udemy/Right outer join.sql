-- Необходимо выполнить в схеме HR
-- Используя соединение LEFT JOIN, добавить в таблицу DEPARTMENTS информацию о менеджерах отделов.
-- Менеджеры должны быть выбраны из таблицы EMPLOYEES.

select b.department_name, count(a.department_id) as people_count
from 
    employees a
    left outer join departments b on a.department_id = b.department_id
group by b.department_name
order by people_count;

--2. Из таблицы LOCATIONS выбрать только поля: LOCATION_ID, CITY
-- С использованием RIGHT JOIN добавить информацию о местоположении каждого отдела из таблицы DEPARTMENTS.
-- Объединение выполняется по полю LOCATION_ID.

select a.location_id, a.city, b.department_name
from 
    locations a
    right outer join departments b on a.location_id = b.location_id
order by location_id;

--3. Необходимо выполнить следующее:
-- Из таблицы EMPLOYEES выбрать поля: EMPLOYEE_ID, FIRST_NAME ,LAST_NAME, JOB_ID, SALARY, DEPARTMENT_ID
-- Из таблицы JOBS, с использованием соединения, добавить информацию о минимальной и максимальной зарплате для каждой должности:MIN_SALARY, MAX_SALARY
-- Из таблицы DEPARTMENTS, с использованием соединения, добавить информацию о названии отдела:DEPARTMENT_NAME
- Отфильтровать только те записи, где SALARY находится в диапазоне от MIN_SALARY и выше, то есть сотрудники, чья зарплата не ниже минимальной для их должности.

select a.employee_id, a.first_name, a.last_name, a.job_id, a.salary, c.min_salary, c.max_salary, a.department_id, b.department_name
from 
    employees a
    right outer join departments b on a.department_id = b.department_id
    right outer join jobs c on a.job_id = c.job_id
where a.salary >= 2 * c.min_salary;
