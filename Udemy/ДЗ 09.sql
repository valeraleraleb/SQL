--1. �������� ��������� ������ � ������������ ������������� (����� � ��� ����� - �� ���� ����������).

CREATE TABLE VALE_CUSTOMERS
    ( 
        customer_id     NUMBER          NOT NULL,
        customer_name   varchar2(20)    NOT NULL,
        city            varchar2(20)
    )
;

CREATE TABLE VALE_CUSTOMERS3
    ( 
        customer_id     NUMBER          NOT NULL,
        customer_name   varchar2(20)    NOT NULL,
        city            varchar2(20)
    )
;

CREATE TABLE VALE_CUSTOMERS4
    ( 
        customer_id     NUMBER          NOT NULL,
        customer_name   varchar2(20)    NOT NULL,
        city            varchar2(20)
    )
;
--2. ������������ ��������� �������.

alter table VALE_CUSTOMERS rename to VALE_CUSTOMERS2;
    
--3. ��������� ������� ������� � ���������� �� � ������� (��� ������������� �������� ����� purge). 
--��������� ������� ������� ��� ����������� �������������� (��������� �������� ����� purge).

drop table VALE_CUSTOMERS3;
drop table VALE_CUSTOMERS4 purge;
