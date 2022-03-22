--1. Используя предложение WHERE и оператор LIKE, оставьте только те строки, в которых значение поля EMAIL содержит сочетание букв AV.

select * from employees
where email like '%AV%';

--2. Используя предложение WHERE и операторы LIKE и AND, оставьте только те строки, в которых значение поля JOB_ID содержит 
--слово CLERK и имя сотрудника (поле LAST_NAME) начинается на английскую букву "B".

select * from employees
where job_id like '%CLERK%' and last_name like '%B%';

--3. Используя предложение WHERE и оператор LIKE, найдите наименования всех таблиц, поля которых содержат слово "EMPLOYEE".

select table_name, column_name, data_type from user_tab_columns
where column_name like '%EMPLOYEE%';