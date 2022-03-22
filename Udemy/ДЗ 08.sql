--«адание необходимо выполн€ть в схеме HR, таблица LOCATIONS.

--1. —формируйте агрегированные данные по полю COUNTRY_ID и количеству значений в поле STREET_ADDRESS. ѕри этом необходимо соблюсти два услови€:
--а) «начени€ пол€ LOCATION_ID должны быть больше 2000.
--б)  оличество значений в поле STREET_ADDRESS должно быть больше либо равно 2.

select count(country_id), count(street_address) from locations
where location_id > 2000
group by country_id, street_address
having count(street_address) >= 1;

--2. ¬ыведите все уникальные значени€ из пол€ STATE_PROVINCE, отсортированные в пор€дке возрастани€ (от A до Z). ѕри этом чтобы значени€ NULL 
--отображались в самом начале списка.

select distinct state_province from locations
order by state_province asc nulls first;
