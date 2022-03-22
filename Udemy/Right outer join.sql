--Задание необходимо выполнять в схеме HR

--1. Используя соединение таблиц LEFT JOIN добавьте в таблицу DEPARTMENTS количество сотрудников по каждому из указанных департаментов. 
--Список сотрудников с привязкой к департаментам можно найти в таблице EMPLOYEES.

select b.department_name, count(a.department_id) as people_count
from 
    employees a
    left outer join departments b on a.department_id = b.department_id
group by b.department_name
order by people_count;

--2. Из таблицы LOCATIONS выберите два поля: LOCATION_ID и CITY. К полученному результату, используя соединение RIGHT JOIN, 
--добавьте наименования департаментов из таблицы DEPARTMENTS. Результат запроса отсортируйте по полю LOCATION_ID.

select a.location_id, a.city, b.department_name
from 
    locations a
    right outer join departments b on a.location_id = b.location_id
order by location_id;

--3. Задание состоит из 4-х последовательных этапов.
--а) Из таблицы EMPLOYEES выберите данные только по полям: EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, DEPARTMENT_ID.
--б) К результату, полученному на этапе А, добавьте после поля SALARY следующие поля из таблицы JOBS: MIN_SALARY, MAX_SALARY.
--в) К результату, полученному на этапе Б, после поля DEPARTMENT_ID добавьте поле DEPARTMENT_NAME из таблицы DEPARTMENTS.
--г) Из результата, полученного на этапе В, оставьте только те строки, где фактическая зарплата сотрудника (SALARY) в два или 
--более раза превышает минимально возможную зарплату по данной позиции (MIN_SALARY)

select a.employee_id, a.first_name, a.last_name, a.job_id, a.salary, c.min_salary, c.max_salary, a.department_id, b.department_name
from 
    employees a
    right outer join departments b on a.department_id = b.department_id
    right outer join jobs c on a.job_id = c.job_id
where a.salary >= 2 * c.min_salary;
