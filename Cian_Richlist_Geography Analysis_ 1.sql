SELECT * FROM billionaires
WHERE country IN ('France','Spain','Italy');
#WHERE country = 'France' OR country = 'Spain';

SELECT COUNT(personname) FROM billionaires
WHERE selfMade = 'True';

SELECT industries,COUNT(personName) AS billionaire_count FROM billionaires
GROUP BY industries
ORDER BY COUNT(personName) DESC
LIMIT 10;

SELECT* from billionaires 
WHERE country REGEXP '^u';

SELECT* FROM billionaires
WHERE country REGEXP 'a$' ;

 SELECT * FROM  billionaires
 WHERE country regexp '^f|^c';

SELECT  * from billionaires
WHERE country regexp '^c[ho]' ;

SELECT personname,finalworth,
IF(finalWorth<10000,'low','high') as category
FROM billionaires;

SELECT personname, finalworth,
CASE
      WHEN finalworth<10000 THEN 'LOW'
      WHEN finalworth BETWEEN 10000 AND 30000 THEN 'MEDIUM'
      ELSE 'HIGH'
END
FROM billionaires;

SELECT personname,finalworth,
(SELECT AVG(finalworth) FROM billionaires)
FROM billionaires;

SELECT * FROM billionaires
INNER JOIN geography
ON billionaires.country=geography.Country_Name;

SELECT country,language,continent FROM billionaires
INNER JOIN geography
ON billionaires.country=geography.Country_Name;

SELECT country,language,continent FROM billionaires
LEFT JOIN geography
ON billionaires.country=geography.Country_Name;

SELECT DISTINCT(country),language,continent FROM billionaires
LEFT JOIN geography
ON billionaires.country=geography.Country_Name;











