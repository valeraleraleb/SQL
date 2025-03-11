-- 1. Вывести 20 первых строк
select * from employees
where rownum <= 20;

--2. Используйте условие WHERE для фильтрации данных по условию, где значение SALARY >= 15000
select * from EMPLOYEES
where SALARY >= 15000;

-- 3. Используйте условие AND для фильтрации данных по условиям, где значение SALARY >= 7500 и JOB_ID = SA_MAN
select * from employees where salary >= 7500 and job_id = 'SA_MAN';

-- 4. Используйте условия AND и OR для фильтрации данных по следующим условиям: 
-- Условие 1: где JOB_ID = IT_PROG 
-- Условие 2: где MANAGER_ID = 121 и JOB_ID = SH_CLERK
    
select * from EMPLOYEES
where job_id = 'IT_PROG' or (manager_id = 121 and JOB_ID = 'SH_CLERK');

--5. Выведите EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID, DEPARTMENT_ID для сотрудников, 
-- где LAST_NAME не входит в список: King, Austin, Faviet, Popp, Ladwig, Seo, Rajs

select 
    EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME, 
    SALARY, 
    MANAGER_ID, 
    DEPARTMENT_ID
from employees 
where last_name in ('King', 'Austin', 'Faviet', 'Popp', 'Ladwig', 'Seo', 'Rajs');

--6. Выведите DEPARTMENT_ID, EMPLOYEE_ID, FIRST_NAME, LAST_NAME для сотрудников, 
-- где DEPARTMENT_ID входит в список: 30, 50, 60, 80, 90, 100

select 
    DEPARTMENT_ID, 
    EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME
from employees
where department_id not in (30, 50, 60, 80, 90, 100);

--7. Выведите EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, упорядочив данные по значению SALARY в порядке убывания. 
-- Также отсортируйте результаты по FIRST_NAME и LAST_NAME в порядке возрастания

select 
    EMPLOYEE_ID, 
    upper(FIRST_NAME) as FIRST_NAME, 
    upper(LAST_NAME) as LAST_NAME, 
    SALARY
from employees
order by salary desc; 
