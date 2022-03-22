-- 1. �������� ������ 20 ����� ������� 
select * from employees
where rownum <= 20;

--2. ��������� ����������� WHERE �������� ������ �� ������, � ������� �������� ���� SALARY >= 15000
select * from EMPLOYEES
where SALARY >= 15000;

-- 3. ��������� �������� AND �������� ������ �� ������, � ������� �������� ���� SALARY >= 7500 � �������� ���� JOB_ID = SA_MAN
select * from employees where salary >= 7500 and job_id = 'SA_MAN';

-- 4. ��������� �������� AND � OR �������� ������ �� ������, � ������� ��������� ����� �� ��������� �������:
	--������� 1: ���� JOB_ID ����� IT_PROG 
	--������� 2: ���� MANAGER_ID = 121 � JOB_ID = SH_CLERK
    
select * from EMPLOYEES
where job_id = 'IT_PROG' or (manager_id = 121 and JOB_ID = 'SH_CLERK');

--5. �������� ���� EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID, DEPARTMENT_ID, ������� ������ ������, 
--� ������� �������� LAST_NAME ��������� � ����� �� ���������: King, Austin, Faviet, Popp, Ladwig, Seo, Rajs

select 
    EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME, 
    SALARY, 
    MANAGER_ID, 
    DEPARTMENT_ID
from employees 
where last_name in ('King', 'Austin', 'Faviet', 'Popp', 'Ladwig', 'Seo', 'Rajs');

--6. �������� ���� DEPARTMENT_ID, EMPLOYEE_ID, FIRST_NAME, LAST_NAME, ������� ������ ������, 
--� ������� �������� DEPARTMENT_ID �� �����: 30, 50, 60, 80, 90, 100

select 
    DEPARTMENT_ID, 
    EMPLOYEE_ID, 
    FIRST_NAME, 
    LAST_NAME
from employees
where department_id not in (30, 50, 60, 80, 90, 100);

--7. �������� ���� EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, ������������ ���������� ��������� �� ���� SALARY �� �������� (�������� �� �������� � ��������). 
--��� ��� �������� ����� FIRST_NAME � LAST_NAME ������ ���� ���������� � ������� ��������.

select 
    EMPLOYEE_ID, 
    upper(FIRST_NAME) as FIRST_NAME, 
    upper(LAST_NAME) as LAST_NAME, 
    SALARY
from employees
order by salary desc; 