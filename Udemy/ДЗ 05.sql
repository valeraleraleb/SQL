--Задание необходимо выполнять в схеме HR, таблица DEPARTMENTS.
--1. С помощью функции COUNT посчитайте количество строк в таблице DEPARTMENTS.

select count(*) from departments;

--2. С помощью функции COUNT посчитайте количество строк в полях MANAGER_ID и LOCATION_ID.

select count(manager_id), count(location_id) from departments;

--3. Используя функцию COUNT, посчитайте количество строк в таблице DEPARTMENTS при условии, что значение 
--поля DEPARTMENT_ID находится в диапазоне от 10 до 100 (включительно). Данные необходимо сгруппировать по полю LOCATION_ID.

select location_id, count(*) from departments
where department_id between 10 and 100
group by location_id;