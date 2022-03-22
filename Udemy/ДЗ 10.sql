--1. �������� ������� EMPLOYEE_INFO �� ���������� ������:
--EMPLOYEE_ID - �������� ����
--FIRST_NAME - ��������� ���� (����� 20 ��������)
--LAST_NAME - ��������� ���� (����� 20 ��������)
--PHONE_NUMBER - ��������� ���� (����� 20 ��������)
--HIRE_DATE - ���� � �����

--���� ������� EMPLOYEE_INFO ��� ����������, �������� ��� ������������ ���������� ������������� ����� ��������� �������.

create table VALE_EMPLOYEE_INFO
    (
    EMPLOYEE_ID number,
    FIRST_NAME VARCHAR2(20),
    LAST_NAME varchar2(20),
    PHONE_NUMBER varchar2(20),
    HIRE_DATE DATE
    );

--2. �������� � �������, ��������� � ������ #1, ��������� ��������:
--LAST_NAME: ������
--FIRST_NAME: ����
--PHONE_NUMBER: 111.222.333
--HIRE_DATE: 01.10.2019
--EMPLOYEE_ID: 10

select * from VALE_EMPLOYEE_INFO;

insert into VALE_EMPLOYEE_INFO
    (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE)
Values
    (10, '����', '������', '111.222.333', '01.10.2019');
commit;

--3. �������� � �������, ��������� � ������ #1, �������� ����������� ����� �� ������� EMPLOYEES (����� HR), 
--� ������� ���� PHONE_NUMBER �������� ��������� ����� ���� "5.123.4".

select phone_number, employee_id, first_name || ' ' || last_name as customer_name
    from HR.employees
    where phone_number like '%5.123.4%';


