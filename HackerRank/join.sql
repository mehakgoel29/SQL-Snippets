/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/
select
    sum(city.population)
from
    city
    join country on city.countrycode = country.code
where
    continent = 'Asia';

/*Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.*/
select
    city.name
from
    city
    join country on city.countrycode = country.code
where
    continent = 'Africa';

/*Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their 
respective average city populations (CITY.Population) rounded down to the nearest integer.*/
select
    country.continent,
    floor(avg(city.population))
from
    city
    join country on city.countrycode = country.code
group by
    country.continent;


