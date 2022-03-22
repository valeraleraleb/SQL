--Задание необходимо выполнять в схеме HR

--1. Из таблицы EMPLOYEES выгрузите уникальные записи по полям DEPARTMENT_ID и MANAGER_ID. К полученному результату, 
--используя LEFT JOIN, добавьте поле DEPARTMENT_NAME из таблицы DEPARTMENTS. При этом в результат запроса должны попасть только те записи, 
--EMPLOYEE_ID по которым находится в диапазоне от 100 до 150 (включительно).
--2. Из таблицы DEPARTMENTS_OLD выгрузите уникальные записи по полям DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID.
--3. Объедините два результата запросов, полученных на шаге #1 и на шаге #2.
--4. Из результата запроса #2 исключите те строки, которые есть в результате запроса #1.
--5. Найдите совпадение (пересечение) строк в результате запроса #1 и запроса #2.


select distinct a.department_id,
    b.department_name,
    a.manager_id
from 
    employees a, departments b
where a.department_id = b.department_id and a.employee_id between 100 and 150;
    

select distinct a.department_id,
    b.department_name,
    a.manager_id
from 
    employees a
    left outer join departments b on a.department_id = b.department_id
where a.employee_id between 100 and 150

intersect

select distinct department_id, department_name, manager_id from departments_old;