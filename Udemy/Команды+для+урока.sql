select '����� ��������� ��������' as TEST from dual;
select '������ �������� ''����������'' � ������' as TEST from dual;
select '������ �������� ������� "�������" � ������' as TEST from dual;
select '������ ���������� ' || '���� �������� ��������' as TEST from dual;

select 100 as TEST from dual;
select '100' + 10 as TEST from dual; 
select 100 - 10 as TEST from dual;
select 100 / 2 as TEST from dual;

select '01.01.2019' as TEST from dual;
select to_date('01.01.2019', 'dd.mm.yyyy') as TEST from dual;
select to_date('01.01.2019', 'dd.mm.yyyy') + 10 as TEST from dual;
select to_date('01.01.2019', 'dd.mm.yyyy') - 1 as TEST from dual;