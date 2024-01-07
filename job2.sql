SELECT country FROM world WHERE country LIKE 'B%';
SELECT country FROM world WHERE country LIKE 'Al%';
SELECT country FROM world WHERE country LIKE '%y';
SELECT country FROM world WHERE country LIKE '%land';
SELECT country FROM world WHERE country LIKE '%w%';
SELECT country FROM world WHERE country LIKE '%oo%' OR country LIKE '%ee%';
SELECT country FROM world WHERE LENGTH(country) - LENGTH(REPLACE(country, 'a', '')) >= 3;
SELECT country FROM world WHERE SUBSTRING(country, 2, 1) = 'r';