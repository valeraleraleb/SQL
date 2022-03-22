--������� ���������� ��������� � ����� HR, ������� EMPLOYEES � DEPARTMENTS.
--1. ��������� ����������� WHERE � �������� BETWEEN, �������� ������ �� ������, � ������� �������� ���� SALARY �������� � 
--�������� �� 10 000 �� 20 000.

select * from employees
where salary between 1000 and 2000;

--2. ��������� ����������� WHERE � �������� BETWEEN, �������� ������ �� ������, � ������� �������� ���� SALARY 
--�������� � �������� �� 1 000 �� 10 000 � ���� ������ ���������� �� ������ �������� � �������� �� 01.01.07 �� 30.06.07.

select * from employees
where salary between 1000 and 2000 and hire_date between '01.01.07' and '30.06.07';

--3. ��������� ��������� ��������� � ����������� WHERE, �������� �� ������� EMPLOYEES ��� ������, LOCATION_ID ������������ ������� 
--� ������� DEPARTMENTS ������ ��� ����� 2600.

select * from employees
where department_id in (
    select department_id from departments
    where location_id >= 2600);