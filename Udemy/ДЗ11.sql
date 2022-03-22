--������� ���������� ��������� � ����� "�������� �����������"

--1. �������� �������, ��������� ������������� SQL ������. ������� ����������� ������� (KMV) �������� �� ��� �������������.

create table VALE_CUSTOMERS5 as
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE
from HR.EMPLOYEES
where EMPLOYEE_ID between 120 and 130;
commit;

--2. � �������, ��������� � ������� #1, � ���� �����������, ������� ������� ���������� �� ����� 'M' (���� LAST_NAME), 
--���� ������ �� ������ (���� HIRE_DATE) ���������� ��� "01.01.2020".

select * from VALE_CUSTOMERS5
order by last_name;

update VALE_CUSTOMERS5
set hire_date = '01.01.2020'
where last_name like '%M%';
commit;

--3. � �������, ��������� � ������� #1, � ���������� "Adam Fripp" �������������� �������. ���������� ������� ������ ���� "Greene".

update VALE_CUSTOMERS5
set last_name = 'Greene'
where last_name = 'Fripp';
commit;

--4. �� �������, ��������� � ������� #1, ������� ��� ������, �������� EMPLOYEE_ID ������� ������ ���� ����� 125.

delete from VALE_CUSTOMERS5
where employee_id >= 125;
commit;

