--Задание необходимо выполнять в схеме HR, таблицы EMPLOYEES и DEPARTMENTS.
--1. Используя предложение WHERE и оператор BETWEEN, оставьте только те строки, в которых значение поля SALARY попадает в 
--диапазон от 10 000 до 20 000.

select * from employees
where salary between 1000 and 2000;

--2. Используя предложение WHERE и оператор BETWEEN, оставьте только те строки, в которых значение поля SALARY 
--попадает в диапазон от 1 000 до 10 000 и дата приема сотрудника на работу попадает в диапазон от 01.01.07 до 30.06.07.

select * from employees
where salary between 1000 and 2000 and hire_date between '01.01.07' and '30.06.07';

--3. Используя вложенный подзапрос в предложении WHERE, выведите из таблицы EMPLOYEES все строки, LOCATION_ID департамента которых 
--в таблице DEPARTMENTS больше или равно 2600.

select * from employees
where department_id in (
    select department_id from departments
    where location_id >= 2600);