SELECT AVG(Birthrate), Region FROM world GROUP BY TRIM(Region);
SELECT MAX("Infant mortality (per 1000 births)"), Region FROM world GROUP BY TRIM(Region);
SELECT MIN("Literacy (%)"), Region FROM world WHERE "Literacy (%)" <> '' GROUP BY TRIM(Region); #<> '' sert à exclure les champs vides de la table.
SELECT "Net migration", Country FROM world WHERE CAST("Net migration" AS DECIMAL) > 10;
SELECT MIN(Deathrate), Region FROM world WHERE Deathrate <> '' GROUP BY TRIM(Region);
SELECT AVG("Arable (%)"), AVG("Crops (%)"), Region FROM world GROUP BY TRIM(Region);
