--Задание необходимо выполнять в схеме HR

--1. Используя соединение таблиц INNER JOIN оставьте в таблице EMPLOYEES только те строки, которые есть в таблице JOBS_TEST (соединение по ключу JOB_ID).

select a.*, b.job_title from 
    employees a
    inner join jobs_test b on a.job_id = b.job_id;

--2. SQL запрос, полученный из задания #1, измените таким образом, чтобы из полученного ранее результата оставались только те строки, 
--в которых наименование должности содержит слово "Sales".

select a.*, b.job_title from 
    employees a
    inner join jobs_test b on a.job_id = b.job_id
where 
    job_title like '%Sales%';

--3. К SQL запросу, полученному в задании #2, добавьте еще одно предложение INNER JOIN только уже со связью с таблицей DEPARTMENTS. 
--Задача - в предложении SELECT, помимо существующих полей, вывести также поле DEPARTMENT_NAME (из таблицы DEPARTMENTS). 
--Объединение таблиц необходимо осуществлять по полю DEPARTMENT_ID.

select a.employee_id, a.job_id, b.job_title, c.department_name from 
    employees a
    inner join jobs_test b on a.job_id = b.job_id
    inner join departments c on a.department_id = c.department_id
where 
    job_title like '%Sales%';
    