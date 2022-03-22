--«адание необходимо выполн€ть в схеме HR, таблица LOCATIONS.

--1. »спользу€ оператор DISTINCT, посчитайте количество уникальных городов (поле CITY).

select count(distinct city) from locations;

--2. »спользу€ оператор DISTINCT, выведите уникальные значени€ полей CITY и COUNTRY_ID. ќтображаемые данные при этом необходимо отсортировать по 
--наименованию городов в пор€дке убывани€ (от Z до A).

select distinct city, country_id from locations
order by city desc;

--3. »спользу€ оператор DISTINCT, выведите уникальные значени€ пол€ COUNTRY_ID при условии, что значени€ пол€ STATE_PROVINCE не равны NULL. 
--ќтображаемые значени€ пол€ COUNTRY_ID необходимо отсортировать по наименованию в пор€дке возрастани€ (от A до Z).

select distinct country_id from locations
where state_province is not null
order by country_id;