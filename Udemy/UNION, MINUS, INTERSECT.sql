--������� ���������� ��������� � ����� HR

--1. �� ������� EMPLOYEES ��������� ���������� ������ �� ����� DEPARTMENT_ID � MANAGER_ID. � ����������� ����������, 
--��������� LEFT JOIN, �������� ���� DEPARTMENT_NAME �� ������� DEPARTMENTS. ��� ���� � ��������� ������� ������ ������� ������ �� ������, 
--EMPLOYEE_ID �� ������� ��������� � ��������� �� 100 �� 150 (������������).
--2. �� ������� DEPARTMENTS_OLD ��������� ���������� ������ �� ����� DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID.
--3. ���������� ��� ���������� ��������, ���������� �� ���� #1 � �� ���� #2.
--4. �� ���������� ������� #2 ��������� �� ������, ������� ���� � ���������� ������� #1.
--5. ������� ���������� (�����������) ����� � ���������� ������� #1 � ������� #2.


select distinct a.department_id,
    b.department_name,
    a.manager_id
from 
    employees a, departments b
where a.department_id = b.department_id and a.employee_id between 100 and 150;
    

select distinct a.department_id,
    b.department_name,
    a.manager_id
from 
    employees a
    left outer join departments b on a.department_id = b.department_id
where a.employee_id between 100 and 150

intersect

select distinct department_id, department_name, manager_id from departments_old;