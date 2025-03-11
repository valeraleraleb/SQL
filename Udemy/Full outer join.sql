-- Необходимо выполнить в схеме HR
-- Используя соединение FULL JOIN, объедините две таблицы: LOCATIONS и DEPARTMENTS.
-- При этом:
--Из таблицы LOCATIONS выбираем только LOCATION_ID и CITY.
-- Поле LOCATION_ID следует переименовать в 'LOCATION_ID_SOURCE'.
-- Поле CITY должно отображаться как есть.
-- Город (CITY) должен быть всегда в выборке, даже если он есть и в LOCATIONS, и в DEPARTMENTS.
--Из таблицы DEPARTMENTS выбираем:
-- DEPARTMENT_ID, DEPARTMENT_NAME и LOCATION_ID.
-- В выборку включаем только те строки, где DEPARTMENT_ID между 10 и 50 включительно.
-- Объединение LOCATIONS и DEPARTMENTS выполняется по полю LOCATION_ID.
-- Итоговый результат должен быть отсортирован по DEPARTMENT_ID в порядке возрастания.

select a.location_id as LOCATION_ID_SOURCE, a.city, b.department_id, b.department_name, b.location_id
from 
    locations a
    full outer join departments b on a.location_id = b.location_id
where 
    lower (a.city) like '%o%o%' and 
    b.department_id between 10 and 50 
order by b.department_id;
