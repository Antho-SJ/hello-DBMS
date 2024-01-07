SELECT Population FROM world WHERE country = 'Germany';
SELECT country, Population FROM world WHERE country = 'Sweden' OR country = 'Norway' OR country = 'Denmark';
SELECT country FROM world WHERE  "Area (sq. mi.)" > 200000 AND "Area (sq. mi.)" < 300000;