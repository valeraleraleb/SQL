--1. ��������� ����������� WHERE � �������� LIKE, �������� ������ �� ������, � ������� �������� ���� EMAIL �������� ��������� ���� AV.

select * from employees
where email like '%AV%';

--2. ��������� ����������� WHERE � ��������� LIKE � AND, �������� ������ �� ������, � ������� �������� ���� JOB_ID �������� 
--����� CLERK � ��� ���������� (���� LAST_NAME) ���������� �� ���������� ����� "B".

select * from employees
where job_id like '%CLERK%' and last_name like '%B%';

--3. ��������� ����������� WHERE � �������� LIKE, ������� ������������ ���� ������, ���� ������� �������� ����� "EMPLOYEE".

select table_name, column_name, data_type from user_tab_columns
where column_name like '%EMPLOYEE%';