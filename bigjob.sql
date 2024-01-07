SELECT AVG(Coal),AVG(Gas),AVG(Oil),AVG(Hydro),AVG(Renewable),AVG(Nuclear) FROM Country; #On remarque que l'hydrolique reste la méthode de production d'énergie la plus utilisée.
SELECT Region, MAX(Hydro) FROM World;
SELECT COUNT(Country) AS "Nombre de pays utilisant encore le charbon"FROM Country WHERE Coal IS NOT 0;
SELECT COUNT(Country) AS "Nombre de pays utilisant le charbon à plus de 30% pour la production d'énergie" FROM Country WHERE Coal > 30;
SELECT Country, Renewable FROM Country ORDER BY Renewable DESC LIMIT 5; #TOP 5 
SELECT Country, MAX(Nuclear) FROM Country;
SELECT
    Country AS "Pays produisant à partir d'une seule",
    CASE
        WHEN Coal = 100 THEN 'Coal'
        WHEN Gas = 100 THEN 'Gas'
        WHEN Oil = 100 THEN 'Oil'
        WHEN Hydro = 100 THEN 'Hydro'
        WHEN Renewable = 100 THEN 'Renewable'
        WHEN Nuclear = 100 THEN 'Nuclear'
    END AS ressource
FROM
    Country
WHERE
    Coal = 100 OR Gas = 100 OR Oil = 100 OR Hydro = 100 OR Renewable = 100 OR Nuclear = 100;

SELECT Country, ((Coal)*820)/((Coal/100)*820+(Gas/100)*490+(Oil/100)*740+(Hydro/100)*24+(Renewable/100)*41+(Nuclear/100)*12), ((Gas)*490)/((Coal/100)*820+(Gas/100)*490+(Oil/100)*740+(Hydro/100)*24+(Renewable/100)*41+(Nuclear/100)*12), ((Oil)*740)/((Coal/100)*820+(Gas/100)*490+(Oil/100)*740+(Hydro/100)*24+(Renewable/100)*41+(Nuclear/100)*12), ((Hydro)*24)/((Coal/100)*820+(Gas/100)*490+(Oil/100)*740+(Hydro/100)*24+(Renewable/100)*41+(Nuclear/100)*12), ((Renewable)*41)/((Coal/100)*820+(Gas/100)*490+(Oil/100)*740+(Hydro/100)*24+(Renewable/100)*41+(Nuclear/100)*12), ((Nuclear)*12)/((Coal/100)*820+(Gas/100)*490+(Oil/100)*740+(Hydro/100)*24+(Renewable/100)*41+(Nuclear/100)*12) FROM Country;
