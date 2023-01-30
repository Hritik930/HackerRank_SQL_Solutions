/***************************
 * Author: Zachary Perales *
 ***************************/

SELECT AVG(DECIMAL(POPULATION,10,2)) 
FROM CITY 
WHERE DISTRICT = 'California';
