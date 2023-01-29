/*********************************************************************************************
 * Query the average population for all cities in CITY, rounded down to the nearest integer. *
 *********************************************************************************************/

SELECT AVG(DECIMAL(POPULATION,10,2)) 
FROM CITY 
WHERE DISTRICT = 'California';
