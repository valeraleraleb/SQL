-- 1. ¬ыведите первые 20 строк таблицы 
select * from employees
where rownum <= 20;

--2. »спользу€ предложение WHERE оставьте только те строки, в которых значение пол€ SALARY >= 15000
select * from EMPLOYEES
where SALARY >= 15000;

-- 3. »спользу€ оператор AND оставьте только те строки, в которых значение пол€ SALARY >= 7500 и значение пол€ JOB_ID = SA_MAN
select * from employees where salary >= 7500 and job_id = 'SA_MAN';

-- 4. »спользу€ оператор AND и OR оставьте только те строки, в которых соблюдено любое из указанных условий:
	--условие 1: поле JOB_ID равно IT_PROG 
	--условие 2: поле MANAGER_ID = 121 и JOB_ID = SH_CLERK
    
select * from EMPLOYEES
where job_id = 'IT_PROG' or (manager_id = 121 and JOB_ID = 'SH_CLERK');

--5. ¬ыведите пол€ EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID, DEPARTMENT_ID, оставив только строки, 
--в которых значение LAST_NAME совпадает с любым из указанных: King, Austin, Faviet, Popp, Ladwig, Seo, Rajs

select 
    EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME, 
    SALARY, 
    MANAGER_ID, 
    DEPARTMENT_ID
from employees 
where last_name in ('King', 'Austin', 'Faviet', 'Popp', 'Ladwig', 'Seo', 'Rajs');

--6. ¬ыведите пол€ DEPARTMENT_ID, EMPLOYEE_ID, FIRST_NAME, LAST_NAME, оставив только строки, 
--в которых значение DEPARTMENT_ID не равно: 30, 50, 60, 80, 90, 100

select 
    DEPARTMENT_ID, 
    EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME
from employees
where department_id not in (30, 50, 60, 80, 90, 100);

--7. ¬ыведите пол€ EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, отфильтровав полученный результат по полю SALARY по убыванию (зарплата от большего к меньшему). 
--ѕри это значени€ полей FIRST_NAME и LAST_NAME должны быть отображены в верхнем регистре.

select 
    EMPLOYEE_ID, 
    upper(FIRST_NAME) as FIRST_NAME, 
    upper(LAST_NAME) as LAST_NAME, 
    SALARY
from employees
order by salary desc; 