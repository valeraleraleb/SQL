-- Необходимо выполнить в схеме HR
-- Используя соединение LEFT JOIN, добавить в таблицу EMPLOYEES:
-- Название должности (из таблицы JOBS).
-- Название отдела (из таблицы DEPARTMENTS).

select a.employee_id, c.job_title, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
order by a.employee_id;

--2. На основе SQL-запроса из шага 1, добавьте условие фильтрации:
-- Включите только тех сотрудников, чей DEPARTMENT_ID находится в диапазоне от 10 до 40 (включительно).

select a.department_id, a.employee_id, c.job_title, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
where a.department_id between 10 and 40
order by a.employee_id;

--3. На основе SQL-запроса из шага 2, добавьте сортировку результатов по следующим полям:
-- EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, JOB_TITLE, DEPARTMENT_ID, DEPARTMENT_NAME

select a.employee_id, a.last_name, a.job_id, c.job_title, a.department_id, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
where a.department_id between 10 and 40
order by a.employee_id;
