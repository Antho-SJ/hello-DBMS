SELECT country FROM world WHERE Population > (SELECT Population FROM world WHERE Country = 'Russia');
SELECT country FROM world WHERE Region LIKE '%EUROPE' AND "GDP ($ per capita)" > (SELECT "GDP ($ per capita)" FROM world WHERE country = 'Italy');
SELECT country FROM world WHERE Population > (SELECT Population FROM world WHERE country = 'United Kingdom') AND Population < (SELECT Population FROM world WHERE country = 'Germany');
SELECT Country, Population, ROUND((Population * 100 / (SELECT Population FROM world WHERE Country = 'Germany')), 1) || '%' AS pourcentage FROM world WHERE TRIM(Region) LIKE '%EUROPE%';
SELECT Country, Region, MAX("Area (sq. mi.)") FROM world GROUP BY TRIM(Region); 
SELECT Region, SUM(Population) FROM world GROUP BY TRIM(Region) HAVING SUM(Population)<= 25000000;

