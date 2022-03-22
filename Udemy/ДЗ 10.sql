--1. Создайте таблицу EMPLOYEE_INFO со следующими полями:
--EMPLOYEE_ID - числовое поле
--FIRST_NAME - текстовое поле (длина 20 символов)
--LAST_NAME - текстовое поле (длина 20 символов)
--PHONE_NUMBER - текстовое поле (длина 20 символов)
--HIRE_DATE - поле с датой

--Если таблица EMPLOYEE_INFO уже существует, допишите ваш произвольный уникальный идентификатор перед названием таблицы.

create table VALE_EMPLOYEE_INFO
    (
    EMPLOYEE_ID number,
    FIRST_NAME VARCHAR2(20),
    LAST_NAME varchar2(20),
    PHONE_NUMBER varchar2(20),
    HIRE_DATE DATE
    );

--2. Добавьте в таблицу, созданную в пункте #1, следующие значения:
--LAST_NAME: Иванов
--FIRST_NAME: Иван
--PHONE_NUMBER: 111.222.333
--HIRE_DATE: 01.10.2019
--EMPLOYEE_ID: 10

select * from VALE_EMPLOYEE_INFO;

insert into VALE_EMPLOYEE_INFO
    (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE)
Values
    (10, 'Иван', 'Иванов', '111.222.333', '01.10.2019');
commit;

--3. Добавьте в таблицу, созданную в пункте #1, значения одноименных полей из таблицы EMPLOYEES (схема HR), 
--у которых поле PHONE_NUMBER содержит следующий набор цифр "5.123.4".

select phone_number, employee_id, first_name || ' ' || last_name as customer_name
    from HR.employees
    where phone_number like '%5.123.4%';


