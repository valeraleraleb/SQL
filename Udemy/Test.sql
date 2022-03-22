--1.Даты регистрации
--Вывести количество контрактов, зарегистрированных в системе за каждый день за последние 5 дней 

select DT_REG, count(DT_REG) as количество_контрактов
from  CONTRACTS
where DT_REG >= trunc(sysdate, 'DDD') - 5
group by DT_REG;

--2 Отчёт по статусам
--Вывести количество контрактов для каждого значения статуса контракта из списка: A - активен, B - заблокирован, C - расторгнут. 
--Результат: статус, «словесное» наименование статуса, количество контрактов.

select V_STATUS, count(V_STATUS)
case 
    when V_STATUS = 'A' then 'активен'
    when V_STATUS = 'B' then 'заблокирован'
    when V_STATUS = 'C' then 'расторгнут'
end
from CONTRACTS
group by V_STATUS;

--3 «Пустые» филиалы
--Вывести наименования филиалов, в которых нет ни одного активного контракта.

select distinct b.V_NAME
from
    CONTRACTS a, DEPARTMENTS b 
where a.id_department = b.id_department
except all
select distinct b.V_NAME
from
    CONTRACTS a, DEPARTMENTS b 
where a.id_department = b.id_department and V_status = 'A';


--4 Счет
--По контракту (v_ext_ident = ‘XXX’) после каждого события (оказанная услуга, платеж) выставляют счет, в котором в поле f_sum отображается задолженность. 
--Требуется вывести задолженность абонента на произвольную дату

select a.v_ext_ident, b.f_sum 
from contracts a, bills b
where a.id_contract_inst = b.id_contract_inst;


--5 Услуги
 
--Напишите процедуру для извлечения данных из таблицы SERVICE, так, чтобы на вход она могла принимать ID услуги (переменная pID). 
--Обратить внимание на то, что она может быть null – в этом случае нужно выводить все записи. На выход процедура должна возвращать курсор 
--(переменная dwr) в виде полей ID_SERVICE, V_NAME, CNT (количестов таких услуг у абонентов) с сортировкой по V_NAME.

-

--6 Курсор
--Напишите курсор CUR, который для выборки строк из SERVICES по условиям ID_SERVICE  не равно 1234 и ID_TARIFF_PLAN равно 567, 
--будет производить изменение поля DT_STOP в начало текущего дня.

cursor new_date
return services%ROWTYPE
is
select * from services
where id_service <> '1234' and id_tariff_plan = '567' and DT_stop = to_date(sysdate);

--7 Уникальные услуги
--Вывести наименования услуг, которые являются уникальными в рамках филиалов, т.е. таких услуг, которые есть только в конкретном филиале и ни в каком другом.

select a.ID_SERVICE, a.ID_CONTRACT_INST.SERVICES, a.ID_DEPARTMENT
from 
    SERVICES a, 
    CONTRACTS b,
where a.ID_CONTRACT_INST = b.ID_CONTRACT_INST
group by a.id_department
having distinct a.id_service;

--8 Популярные услуги
--Вывести наименования тарифных планов для 5 самых популярных услуг

select V_name, 'Тариф'
from ( select ID_SERVICE, V_name,count(ID_SERVICE) as 'Тариф'
from SERVICES, TARIFF_PLAN
where ID_TARIFF_PLAN.SERVICES = ID_TARIFF_PLAN.TARIFF_PLAN
group by V_name
order by 'Тариф' desc
where rownum <=5;
