SELECT personName,industries FROM richlist.billionaires;
INSERT INTO richlist.geography
(Country_Name,Language,Continent)
VALUES
('Ice-cold','Coldness','Antarctica');

SELECT * FROM richlist.geography
WHERE Country_Name = 'Ice-cold';

UPDATE  richlist.geography
SET Language =  'Icy'
WHERE Country_Name = 'Ice-cold';

SELECT * FROM richlist.geography
WHERE Country_Name = 'Ice-cold';

SELECT birthDate,finalWorth 
FROM richlist.billionaires
WHERE 
 birthDate BETWEEN 	'01/01/1950' AND '01/01/1960';
 
SELECT CAST(birthDate AS DATE) AS date_only,finalWorth 
FROM richlist.billionaires
WHERE 
 birthDate BETWEEN 	'01/01/1950' AND '01/01/1960';
 
 SELECT CONCAT(Country_Name, Continent) AS New_column 
 FROM richlist.geography
 WHERE Continent='North America';
 
 SELECT COALESCE(Country_Name, Continent) AS New_column 
 FROM richlist.geography;
