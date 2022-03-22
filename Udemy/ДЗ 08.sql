--������� ���������� ��������� � ����� HR, ������� LOCATIONS.

--1. ����������� �������������� ������ �� ���� COUNTRY_ID � ���������� �������� � ���� STREET_ADDRESS. ��� ���� ���������� �������� ��� �������:
--�) �������� ���� LOCATION_ID ������ ���� ������ 2000.
--�) ���������� �������� � ���� STREET_ADDRESS ������ ���� ������ ���� ����� 2.

select count(country_id), count(street_address) from locations
where location_id > 2000
group by country_id, street_address
having count(street_address) >= 1;

--2. �������� ��� ���������� �������� �� ���� STATE_PROVINCE, ��������������� � ������� ����������� (�� A �� Z). ��� ���� ����� �������� NULL 
--������������ � ����� ������ ������.

select distinct state_province from locations
order by state_province asc nulls first;
