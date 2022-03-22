--������� ���������� ��������� � ����� HR, ������� DEPARTMENTS.
--1. � ������� ������� COUNT ���������� ���������� ����� � ������� DEPARTMENTS.

select count(*) from departments;

--2. � ������� ������� COUNT ���������� ���������� ����� � ����� MANAGER_ID � LOCATION_ID.

select count(manager_id), count(location_id) from departments;

--3. ��������� ������� COUNT, ���������� ���������� ����� � ������� DEPARTMENTS ��� �������, ��� �������� 
--���� DEPARTMENT_ID ��������� � ��������� �� 10 �� 100 (������������). ������ ���������� ������������� �� ���� LOCATION_ID.

select location_id, count(*) from departments
where department_id between 10 and 100
group by location_id;