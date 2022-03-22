--������� ���������� ��������� � ����� HR

--1. ��������� ���������� ������ LEFT JOIN �������� � ������� DEPARTMENTS ���������� ����������� �� ������� �� ��������� �������������. 
--������ ����������� � ��������� � ������������� ����� ����� � ������� EMPLOYEES.

select b.department_name, count(a.department_id) as people_count
from 
    employees a
    left outer join departments b on a.department_id = b.department_id
group by b.department_name
order by people_count;

--2. �� ������� LOCATIONS �������� ��� ����: LOCATION_ID � CITY. � ����������� ����������, ��������� ���������� RIGHT JOIN, 
--�������� ������������ ������������� �� ������� DEPARTMENTS. ��������� ������� ������������ �� ���� LOCATION_ID.

select a.location_id, a.city, b.department_name
from 
    locations a
    right outer join departments b on a.location_id = b.location_id
order by location_id;

--3. ������� ������� �� 4-� ���������������� ������.
--�) �� ������� EMPLOYEES �������� ������ ������ �� �����: EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY, DEPARTMENT_ID.
--�) � ����������, ����������� �� ����� �, �������� ����� ���� SALARY ��������� ���� �� ������� JOBS: MIN_SALARY, MAX_SALARY.
--�) � ����������, ����������� �� ����� �, ����� ���� DEPARTMENT_ID �������� ���� DEPARTMENT_NAME �� ������� DEPARTMENTS.
--�) �� ����������, ����������� �� ����� �, �������� ������ �� ������, ��� ����������� �������� ���������� (SALARY) � ��� ��� 
--����� ���� ��������� ���������� ��������� �������� �� ������ ������� (MIN_SALARY)

select a.employee_id, a.first_name, a.last_name, a.job_id, a.salary, c.min_salary, c.max_salary, a.department_id, b.department_name
from 
    employees a
    right outer join departments b on a.department_id = b.department_id
    right outer join jobs c on a.job_id = c.job_id
where a.salary >= 2 * c.min_salary;
