--������� ���������� ��������� � ����� HR, ������� LOCATIONS.

--1. ��������� �������� DISTINCT, ���������� ���������� ���������� ������� (���� CITY).

select count(distinct city) from locations;

--2. ��������� �������� DISTINCT, �������� ���������� �������� ����� CITY � COUNTRY_ID. ������������ ������ ��� ���� ���������� ������������� �� 
--������������ ������� � ������� �������� (�� Z �� A).

select distinct city, country_id from locations
order by city desc;

--3. ��������� �������� DISTINCT, �������� ���������� �������� ���� COUNTRY_ID ��� �������, ��� �������� ���� STATE_PROVINCE �� ����� NULL. 
--������������ �������� ���� COUNTRY_ID ���������� ������������� �� ������������ � ������� ����������� (�� A �� Z).

select distinct country_id from locations
where state_province is not null
order by country_id;