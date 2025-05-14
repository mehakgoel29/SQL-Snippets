/*We define an employee's total earnings to be their monthly salary*months  worked, and 
the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
Write a query to find the maximum total earnings for all employees as well as the total number of employees
who have maximum total earnings. Then print these values as  space-separated integers.
 */
SELECT
    MAX(salary * months),
    COUNT(salary * months)
FROM
    employee
WHERE
    salary * months = (
        SELECT
            MAX(salary * months)
        FROM
            employee
    );

/*
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.*/
select
    round(sum(lat_n), 2),
    round(sum(long_w), 2)
from
    station;

/*Query the sum of Northern Latitudes (LAT_N) from STATION having
values greater than 38.7880 and less than 137.2345. Truncate your
answer to 4 decimal places.*/
select
    round(sum(lat_n), 4) as result
from
    station
where
    lat_n > 38.7880
    and lat_n < 137.2345;

/*Samantha was tasked with calculating the average monthly salaries for
all employees in the EMPLOYEES table, but did not realize her
keyboard's 0 key was broken until after completing the calculation. She
wants your help finding the difference between her miscalculation
(using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:
actual - miscalculated average monthly salaries), and round it up to
the next integer.*/
select
    ceil(avg(salary) - avg(replace (salary, '0', '')))
from
    employees;

/*Query the Western Longitude (LONG_W) for the largest Northern Latitude
(LAT_N) in STATION that is less than 137.2345. Round your answer to 4
decimal places.select round(long_w,4), lat_n from station where lat_n<137.2345;*/
SELECT
    ROUND(long_w, 4)
FROM
    station
WHERE
    lat_n = (
        SELECT
            MAX(lat_n)
        FROM
            station
        WHERE
            lat_n < 137.2345
    );

/*Consider P1 (a, c) and P2(b, d) to be two points on a 2D plane where
(a, b) are the respective minimum and maximum values of Northern
Latitude (LAT_N) and (c, d) are the respective minimum and maximum
values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format
your answer to display 4 decimal digits.*/
SELECT
    ROUND(
        SQRT(
            POW ((MAX(LAT_N) - MIN(LAT_N)), 2) + POW ((MAX(LONG_W) - MIN(LONG_W)), 2)
        ),
        4
    )
FROM
    station;

/*Consider Pi (a, b) and P2 (c, d) to be two points on a 2D plane.
• a happens to equal the minimum value in Northern Latitude (LAT_N
in STATION).
• 6 happens to equal the minimum value in Western Longitude
(LONG_W in STATION).
• c happens to equal the maximum value in Northern Latitude (LAT_N
in STATION).
• d happens to equal the maximum value in Western Longitude
(LONG_W in STATION).
Query the Manhattan Distance between points P1 and P2 and round it
to a scale of 4 decimal places.*/
-- Manhattan distance :|x₁ - x₂| + |y₁ - y₂|
SELECT
    ROUND(
        ABS(MAX(lat_n) - MIN(lat_n)) + ABS(MAX(long_w) - MIN(long_w)),
        4
    )
FROM
    station;

