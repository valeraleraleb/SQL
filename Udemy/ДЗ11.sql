--Задание необходимо выполнять в схеме "Тестовое подключение"

--1. Создайте таблицу, используя нижеуказанный SQL запрос. Префикс создаваемой таблицы (KMV) замените на ваш идентификатор.

create table VALE_CUSTOMERS5 as
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE
from HR.EMPLOYEES
where EMPLOYEE_ID between 120 and 130;
commit;

--2. В таблице, созданной в задании #1, у всех сотрудников, фамилия которых начинается на букву 'M' (поле LAST_NAME), 
--дату приема на работу (поле HIRE_DATE) установите как "01.01.2020".

select * from VALE_CUSTOMERS5
order by last_name;

update VALE_CUSTOMERS5
set hire_date = '01.01.2020'
where last_name like '%M%';
commit;

--3. В таблице, созданной в задании #1, у сотрудника "Adam Fripp" скорректируйте фамилию. Правильная фамилия должна быть "Greene".

update VALE_CUSTOMERS5
set last_name = 'Greene'
where last_name = 'Fripp';
commit;

--4. Из таблицы, созданной в задании #1, удалите все строки, значение EMPLOYEE_ID которых больше либо равно 125.

delete from VALE_CUSTOMERS5
where employee_id >= 125;
commit;

