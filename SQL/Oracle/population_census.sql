/***************************
 * Author: Zachary Perales *
 ***************************/
 
SELECT SUM(CITY.POPULATION)
FROM CITY
INNER JOIN COUNTRY ON COUNTRYCODE = CODE
WHERE CONTINENT = "ASIA";
