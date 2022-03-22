--1. Используя функцию AVG, посчитайте среднюю зарплату сотрудников. Данные необходимо сгруппировать по полю DEPARTMENT_ID.

select department_id, avg(salary) as средняя_зарплата from employees
group by department_id
order by department_id;

--2. Используя функцию SUM, посчитайте сумму зарплаты сотрудников, номер телефона которых (поле PHONE_NUMBER) содержит последовательность цифр "1346".
--При этом также необходимо:
--а) сгруппировать данные по фамилии и имени сотрудников,
--б) полученный результат отсортировать по фамилии сотрудников.

select first_name, last_name, sum(salary) as средняя_зарплата from employees
where phone_number like '%1346%'
group by first_name, last_name
order by last_name;

--3. С помощью функций MIN и MAX найдите минимальную и максимальную дату приема сотрудника на работу (поле HIRE_DATE) в департаменте #50 (поле DEPARTMENT_ID).

select 
    department_id, 
    min(hire_date) as Минимальная_дата, 
    max(hire_date) as Максимальная_дата 
from employees
where department_id = 50
group by department_id;

--4. С помощью функции MAX найдите последнюю по алфавиту фамилию сотрудника (поле LAST_NAME).

select max(last_name) as последняя_фамилия from employees;
