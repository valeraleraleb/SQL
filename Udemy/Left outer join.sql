--Задание необходимо выполнять в схеме HR

--1. Используя соединение таблиц LEFT JOIN добавьте в таблицу EMPLOYEES поля: 
-- должности (см. в таблице JOBS), Название департамента (см. в таблице DEPARTMENTS).

select a.employee_id, c.job_title, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
order by a.employee_id;

--2. SQL запрос, полученный в задании #1, измените таким образом, чтобы результат запроса содержал только те строки, код департамента по которым 
--(поле DEPARTMENT_ID) находится в диапазоне от 10 до 40 (включительно).

select a.department_id, a.employee_id, c.job_title, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
where a.department_id between 10 and 40
order by a.employee_id;

--3. SQL запрос, полученный в задании #2, измените таким образом, чтобы результат запроса содержал только следующие поля: EMPLOYEE_ID, FIRST_NAME, 
--LAST_NAME, JOB_ID, JOB_TITLE, DEPARTMENT_ID, DEPARTMENT_NAME

select a.employee_id, a.last_name, a.job_id, c.job_title, a.department_id, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
where a.department_id between 10 and 40
order by a.employee_id;
