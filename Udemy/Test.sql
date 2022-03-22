--1.���� �����������
--������� ���������� ����������, ������������������ � ������� �� ������ ���� �� ��������� 5 ���� 

select DT_REG, count(DT_REG) as ����������_����������
from  CONTRACTS
where DT_REG >= trunc(sysdate, 'DDD') - 5
group by DT_REG;

--2 ����� �� ��������
--������� ���������� ���������� ��� ������� �������� ������� ��������� �� ������: A - �������, B - ������������, C - ����������. 
--���������: ������, ���������� ������������ �������, ���������� ����������.

select V_STATUS, count(V_STATUS)
case 
    when V_STATUS = 'A' then '�������'
    when V_STATUS = 'B' then '������������'
    when V_STATUS = 'C' then '����������'
end
from CONTRACTS
group by V_STATUS;

--3 ������� �������
--������� ������������ ��������, � ������� ��� �� ������ ��������� ���������.

select distinct b.V_NAME
from
    CONTRACTS a, DEPARTMENTS b 
where a.id_department = b.id_department
except all
select distinct b.V_NAME
from
    CONTRACTS a, DEPARTMENTS b 
where a.id_department = b.id_department and V_status = 'A';


--4 ����
--�� ��������� (v_ext_ident = �XXX�) ����� ������� ������� (��������� ������, ������) ���������� ����, � ������� � ���� f_sum ������������ �������������. 
--��������� ������� ������������� �������� �� ������������ ����

select a.v_ext_ident, b.f_sum 
from contracts a, bills b
where a.id_contract_inst = b.id_contract_inst;


--5 ������
 
--�������� ��������� ��� ���������� ������ �� ������� SERVICE, ���, ����� �� ���� ��� ����� ��������� ID ������ (���������� pID). 
--�������� �������� �� ��, ��� ��� ����� ���� null � � ���� ������ ����� �������� ��� ������. �� ����� ��������� ������ ���������� ������ 
--(���������� dwr) � ���� ����� ID_SERVICE, V_NAME, CNT (���������� ����� ����� � ���������) � ����������� �� V_NAME.

-

--6 ������
--�������� ������ CUR, ������� ��� ������� ����� �� SERVICES �� �������� ID_SERVICE  �� ����� 1234 � ID_TARIFF_PLAN ����� 567, 
--����� ����������� ��������� ���� DT_STOP � ������ �������� ���.

cursor new_date
return services%ROWTYPE
is
select * from services
where id_service <> '1234' and id_tariff_plan = '567' and DT_stop = to_date(sysdate);

--7 ���������� ������
--������� ������������ �����, ������� �������� ����������� � ������ ��������, �.�. ����� �����, ������� ���� ������ � ���������� ������� � �� � ����� ������.

select a.ID_SERVICE, a.ID_CONTRACT_INST.SERVICES, a.ID_DEPARTMENT
from 
    SERVICES a, 
    CONTRACTS b,
where a.ID_CONTRACT_INST = b.ID_CONTRACT_INST
group by a.id_department
having distinct a.id_service;

--8 ���������� ������
--������� ������������ �������� ������ ��� 5 ����� ���������� �����

select V_name, '�����'
from ( select ID_SERVICE, V_name,count(ID_SERVICE) as '�����'
from SERVICES, TARIFF_PLAN
where ID_TARIFF_PLAN.SERVICES = ID_TARIFF_PLAN.TARIFF_PLAN
group by V_name
order by '�����' desc
where rownum <=5;
