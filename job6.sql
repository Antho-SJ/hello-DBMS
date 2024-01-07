SELECT "Population mondial",SUM(Population) FROM world;
SELECT Region, SUM(Population) FROM world GROUP BY TRIM(Region);
SELECT Region, SUM("GDP ($ per capita)") FROM world GROUP BY TRIM(Region);
SELECT Region, SUM("GDP ($ per capita)") FROM world WHERE TRIM(Region) LIKE '%AFRICA';
SELECT COUNT(Country) FROM world WHERE "Area (sq. mi.)" >= 1000000;
SELECT Country, Population FROM world WHERE Country = 'Estonia' OR Country = 'Latvia' OR Country = 'Lithuania';
SELECT Region, COUNT(Country) FROM world GROUP BY TRIM(Region);
SELECT Region, SUM(Population) FROM world GROUP BY TRIM(Region) HAVING SUM(Population) >= 100000000 ;