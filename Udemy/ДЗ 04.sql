--Задание необходимо выполнять в схеме HR, таблица DEPARTMENTS.

--1. Используя предложение WHERE, отобразите список всех департаментов (поле DEPARTMENT_NAME), у которых не определен руководитель 
--(значение в поле MANAGER_ID = NULL).

select department_name, manager_id from departments
where manager_id is null; 

--2. Используя предложение WHERE, отобразите список всех департаментов (поле DEPARTMENT_NAME), у которых определен руководитель 
--(значение в поле MANAGER_ID <> NULL).

select department_name, manager_id from departments
where manager_id is not null; 

--3. Используя предложение WHERE и функцию NVL, отобразите департаменты (поле DEPARTMENT_NAME) и их руководителей (поле MANAGER_ID) при следующих требованиях:
-- 1 ID департамента равен любому из указанных значений: 10, 50, 120, 200
-- 2Возможные значения NULL в поле MANAGER_ID необходимо заменить на число 999

select department_name, nvl (manager_id, 999) from departments
where department_id in (10, 50, 120, 200);