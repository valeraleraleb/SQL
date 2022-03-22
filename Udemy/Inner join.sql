--������� ���������� ��������� � ����� HR

--1. ��������� ���������� ������ INNER JOIN �������� � ������� EMPLOYEES ������ �� ������, ������� ���� � ������� JOBS_TEST (���������� �� ����� JOB_ID).

select a.*, b.job_title from 
    employees a
    inner join jobs_test b on a.job_id = b.job_id;

--2. SQL ������, ���������� �� ������� #1, �������� ����� �������, ����� �� ����������� ����� ���������� ���������� ������ �� ������, 
--� ������� ������������ ��������� �������� ����� "Sales".

select a.*, b.job_title from 
    employees a
    inner join jobs_test b on a.job_id = b.job_id
where 
    job_title like '%Sales%';

--3. � SQL �������, ����������� � ������� #2, �������� ��� ���� ����������� INNER JOIN ������ ��� �� ������ � �������� DEPARTMENTS. 
--������ - � ����������� SELECT, ������ ������������ �����, ������� ����� ���� DEPARTMENT_NAME (�� ������� DEPARTMENTS). 
--����������� ������ ���������� ������������ �� ���� DEPARTMENT_ID.

select a.employee_id, a.job_id, b.job_title, c.department_name from 
    employees a
    inner join jobs_test b on a.job_id = b.job_id
    inner join departments c on a.department_id = c.department_id
where 
    job_title like '%Sales%';
    