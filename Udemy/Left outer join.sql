--������� ���������� ��������� � ����� HR

--1. ��������� ���������� ������ LEFT JOIN �������� � ������� EMPLOYEES ����: 
-- ��������� (��. � ������� JOBS), �������� ������������ (��. � ������� DEPARTMENTS).

select a.employee_id, c.job_title, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
order by a.employee_id;

--2. SQL ������, ���������� � ������� #1, �������� ����� �������, ����� ��������� ������� �������� ������ �� ������, ��� ������������ �� ������� 
--(���� DEPARTMENT_ID) ��������� � ��������� �� 10 �� 40 (������������).

select a.department_id, a.employee_id, c.job_title, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
where a.department_id between 10 and 40
order by a.employee_id;

--3. SQL ������, ���������� � ������� #2, �������� ����� �������, ����� ��������� ������� �������� ������ ��������� ����: EMPLOYEE_ID, FIRST_NAME, 
--LAST_NAME, JOB_ID, JOB_TITLE, DEPARTMENT_ID, DEPARTMENT_NAME

select a.employee_id, a.last_name, a.job_id, c.job_title, a.department_id, b.department_name
from
    employees a
    left outer join departments b on a.department_id = b.department_id
    left outer join jobs c on a.job_id= c.job_id
where a.department_id between 10 and 40
order by a.employee_id;
