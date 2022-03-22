--1. ��������� ������� AVG, ���������� ������� �������� �����������. ������ ���������� ������������� �� ���� DEPARTMENT_ID.

select department_id, avg(salary) as �������_�������� from employees
group by department_id
order by department_id;

--2. ��������� ������� SUM, ���������� ����� �������� �����������, ����� �������� ������� (���� PHONE_NUMBER) �������� ������������������ ���� "1346".
--��� ���� ����� ����������:
--�) ������������� ������ �� ������� � ����� �����������,
--�) ���������� ��������� ������������� �� ������� �����������.

select first_name, last_name, sum(salary) as �������_�������� from employees
where phone_number like '%1346%'
group by first_name, last_name
order by last_name;

--3. � ������� ������� MIN � MAX ������� ����������� � ������������ ���� ������ ���������� �� ������ (���� HIRE_DATE) � ������������ #50 (���� DEPARTMENT_ID).

select 
    department_id, 
    min(hire_date) as �����������_����, 
    max(hire_date) as ������������_���� 
from employees
where department_id = 50
group by department_id;

--4. � ������� ������� MAX ������� ��������� �� �������� ������� ���������� (���� LAST_NAME).

select max(last_name) as ���������_������� from employees;
