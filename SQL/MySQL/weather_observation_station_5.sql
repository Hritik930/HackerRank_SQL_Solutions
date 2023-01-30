/***************************
 * Author: Zachary Perales *
 ***************************/

SELECT * FROM ((SELECT CITY, LENGTH(CITY) 
                FROM STATION 
                ORDER BY LENGTH(CITY) asc, CITY limit 1)
                UNION
               (SELECT CITY, LENGTH(CITY) 
                FROM STATION 
                ORDER BY LENGTH(CITY) desc, CITY limit 1));
