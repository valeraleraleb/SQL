--Задание необходимо выполнять в схеме HR
--Используя соединение FULL JOIN, объедините две таблицы: LOCATIONS и DEPARTMENTS.
--При этом:
--1. Из таблицы LOCATIONS используйте только поля: LOCATION_ID и CITY. При этом поле LOCATION_ID при выводе финального запроса переименуйте 
--в 'LOCATION_ID_SOURCE'. Также задайте ограничение по таблице LOCATIONS: CITY содержит две англ. буквы О (в любом регистре и в любом месте слова).
--2. Из таблицы DEPARTMENTS используйте только поля: DEPARTMENT_ID, DEPARTMENT_NAME и LOCATION_ID. Также задайте ограничение по таблице DEPARTMENTS: 
--DEPARTMENT_ID чтобы попадал в диапазон от 10 до 50 (включительно).
--3. Связь таблиц LOCATIONS и DEPARTMENTS настройте через поле LOCATION_ID.
--4. Полученную в результате запроса таблицу отсортируйте по полю DEPARTMENT_ID (по возрастанию).

select a.location_id as LOCATION_ID_SOURCE, a.city, b.department_id, b.department_name, b.location_id
from 
    locations a
    full outer join departments b on a.location_id = b.location_id
where 
    lower (a.city) like '%o%o%' and 
    b.department_id between 10 and 50 
order by b.department_id;