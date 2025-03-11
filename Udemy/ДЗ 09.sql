--1. Выведите среднее значение зарплаты и количество сотрудников (в каждой группе — по отделу)

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
--2. Распределите сотрудников по группам

alter table VALE_CUSTOMERS rename to VALE_CUSTOMERS2;
    
--3. Выполните команду truncate для очистки таблицы (если необходимо, используйте команду purge). 
-- Дополнительно используйте команду drop для удаления таблицы.

drop table VALE_CUSTOMERS3;
drop table VALE_CUSTOMERS4 purge;
