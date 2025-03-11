--1. Создайте таблицу EMPLOYEE_INFO с полями:
-- EMPLOYEE_ID - идентификатор сотрудника
-- FIRST_NAME - имя сотрудника (максимум 20 символов)
-- LAST_NAME - фамилия сотрудника (максимум 20 символов)
-- PHONE_NUMBER - номер телефона (максимум 20 символов)
-- HIRE_DATE - дата принятия на работу
-- Создайте таблицу EMPLOYEE_INFO с указанием, что все поля должны быть обязательными для заполнения.

create table VALE_EMPLOYEE_INFO
    (
    EMPLOYEE_ID number,
    FIRST_NAME VARCHAR2(20),
    LAST_NAME varchar2(20),
    PHONE_NUMBER varchar2(20),
    HIRE_DATE DATE
    );

--2. Вставьте в таблицу, созданную в пункте #1, данные следующего вида:
-- LAST_NAME: Иванов
-- FIRST_NAME: Иван
--PHONE_NUMBER: 111.222.333
--HIRE_DATE: 01.10.2019
--EMPLOYEE_ID: 10

select * from VALE_EMPLOYEE_INFO;

insert into VALE_EMPLOYEE_INFO
    (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE)
Values
    (10, 'Èâàí', 'Èâàíîâ', '111.222.333', '01.10.2019');
commit;

--3. Вставьте в таблицу, созданную в пункте #1, данные сотрудников из таблицы EMPLOYEES (схема HR), 
-- и укажите значение PHONE_NUMBER в формате "5.123.4"

select phone_number, employee_id, first_name || ' ' || last_name as customer_name
    from HR.employees
    where phone_number like '%5.123.4%';


