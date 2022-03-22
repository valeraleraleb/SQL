--������� ���������� ��������� � ����� HR, ������� DEPARTMENTS.

--1. ��������� ����������� WHERE, ���������� ������ ���� ������������� (���� DEPARTMENT_NAME), � ������� �� ��������� ������������ 
--(�������� � ���� MANAGER_ID = NULL).

select department_name, manager_id from departments
where manager_id is null; 

--2. ��������� ����������� WHERE, ���������� ������ ���� ������������� (���� DEPARTMENT_NAME), � ������� ��������� ������������ 
--(�������� � ���� MANAGER_ID <> NULL).

select department_name, manager_id from departments
where manager_id is not null; 

--3. ��������� ����������� WHERE � ������� NVL, ���������� ������������ (���� DEPARTMENT_NAME) � �� ������������� (���� MANAGER_ID) ��� ��������� �����������:
-- 1 ID ������������ ����� ������ �� ��������� ��������: 10, 50, 120, 200
-- 2��������� �������� NULL � ���� MANAGER_ID ���������� �������� �� ����� 999

select department_name, nvl (manager_id, 999) from departments
where department_id in (10, 50, 120, 200);