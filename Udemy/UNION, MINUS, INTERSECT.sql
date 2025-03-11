-- Из таблицы EMPLOYEES выбрать поля DEPARTMENT_ID и MANAGER_ID.
-- Используя LEFT JOIN, добавить информацию о DEPARTMENT_NAME из таблицы DEPARTMENTS.
-- Фильтровать результаты по EMPLOYEE_ID в диапазоне от 100 до 150.
-- Из таблицы DEPARTMENTS_OLD выбрать поля DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID.
-- Объединить результаты, полученные в пункте 1 и 2.
-- Отсортировать результат по DEPARTMENT_ID из таблицы DEPARTMENTS_OLD.
-- Окончательный результат должен содержать (по вашему запросу) объединённые данные из обеих таблиц.

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
