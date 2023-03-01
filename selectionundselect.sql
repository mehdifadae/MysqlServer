use world;

select * from city;
select * from world.city;

select name from city;
select city.name from city;
select world.city.name from world.city;

select name, population from city;
select city.name, city.population from city;
select world.city.name, world.city.population from world.city;

select name, population from city order by name;
select name, population from city order by population;

select city.name, city.population from city order by city.name;
select world.city.name, world.city.population from world.city order by world.city.population;

#descenting
select name, population from city order by name desc;
select name, population from city order by population desc;

select city.name, city.population from city order by city.name desc;
select world.city.name, world.city.population from world.city order by world.city.population desc;

#ascenting
select name, population from city order by name asc;
select name, population from city order by population asc;

select city.name, city.population from city order by city.name asc;
select world.city.name, world.city.population from world.city order by world.city.population asc;

#sortiert nach zwei merkmalen
select name, district from city order by name desc, district;
select district, name from city order by district desc, name;
select city.district, city.name from city order by city.district desc, cita.name;

#namenausflösung
select name from city;
select name from country;

#ambiguous fejler
#select name, name from city, country;

select city.name, country.name from city, country;

select o.name, i.name from city i, country o;

#Selection - nicht alle datensätze
select name from city where id = 200;
select name, district from city where countrycode = "DEU";

select name from country where continent = 'europe';
select name from country where continent = 'europe' and name like"B%";
select name from country where continent = 'europe' and name like "______";
select name from country where continent = 'europe' and name like"%a";
select name from country where continent = 'europe' and name like "a_";
select name from country where continent = 'europe' and name like "%a" order by name asc;
select name from country where continent = 'europe' and name like "%a" order by name desc;


select name, population from city where countrycode = "BRA" order by population asc;
select name from city where countrycode = "BRA" and population between 89200 and 9968485 order by population;
select name from city where countrycode = "BRA" and population between 9000000 and 9968485 order by population;

select name,  indepyear from country where  indepyear >= 1980 order by indepyear asc ;


use schuledb;
select * from schuledb.schueler;
select vorname, Geburtsdatum from schueler where Geburtsdatum >= "1993_01_01";
select vorname, geburtsdatum from schueler where geburtsdatum between "1993" and "1994";
select vorname, vorname from schueler where vorname between "E%" and "K%";

use world;
select name, countrycode from city where countrycode = "DEU" or countrycode = "AUT" or countrycode = "ITA" or countrycode = "CHE";





