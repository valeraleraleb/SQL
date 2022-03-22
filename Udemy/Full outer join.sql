--������� ���������� ��������� � ����� HR
--��������� ���������� FULL JOIN, ���������� ��� �������: LOCATIONS � DEPARTMENTS.
--��� ����:
--1. �� ������� LOCATIONS ����������� ������ ����: LOCATION_ID � CITY. ��� ���� ���� LOCATION_ID ��� ������ ���������� ������� ������������ 
--� 'LOCATION_ID_SOURCE'. ����� ������� ����������� �� ������� LOCATIONS: CITY �������� ��� ����. ����� � (� ����� �������� � � ����� ����� �����).
--2. �� ������� DEPARTMENTS ����������� ������ ����: DEPARTMENT_ID, DEPARTMENT_NAME � LOCATION_ID. ����� ������� ����������� �� ������� DEPARTMENTS: 
--DEPARTMENT_ID ����� ������� � �������� �� 10 �� 50 (������������).
--3. ����� ������ LOCATIONS � DEPARTMENTS ��������� ����� ���� LOCATION_ID.
--4. ���������� � ���������� ������� ������� ������������ �� ���� DEPARTMENT_ID (�� �����������).

select a.location_id as LOCATION_ID_SOURCE, a.city, b.department_id, b.department_name, b.location_id
from 
    locations a
    full outer join departments b on a.location_id = b.location_id
where 
    lower (a.city) like '%o%o%' and 
    b.department_id between 10 and 50 
order by b.department_id;