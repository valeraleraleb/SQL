-- Получите количество записей в таблице HR, в таблице DEPARTMENTS.
--1. Используйте функцию COUNT для подсчета всех записей в таблице DEPARTMENTS.

select count(*) from departments;

--2. Используйте функцию COUNT для подсчета всех записей в таблице DEPARTMENTS, где указаны значения MANAGER_ID и LOCATION_ID.

select count(manager_id), count(location_id) from departments;

--3. Используйте функцию COUNT для подсчета всех записей в таблице DEPARTMENTS, 
-- где значение DEPARTMENT_ID находится в пределах от 10 до 100 (включительно). Результаты сгруппируйте по LOCATION_ID

select location_id, count(*) from departments
where department_id between 10 and 100
group by location_id;
