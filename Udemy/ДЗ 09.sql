--1. Создайте несколько таблиц с произвольным наименованием (набор и тип полей - на ваше усмотрение).

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
--2. Переименуйте созданные таблицы.

alter table VALE_CUSTOMERS rename to VALE_CUSTOMERS2;
    
--3. Некоторые таблицы удалите с помещением их в корзину (без использования ключевой фразы purge). 
--Некоторые таблицы удалите без возможности восстановления (используя ключевую фразу purge).

drop table VALE_CUSTOMERS3;
drop table VALE_CUSTOMERS4 purge;
