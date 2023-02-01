/***************************
 * Author: Zachary Perales *
 ***************************/
 
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(UPPER(CITY), '^[^(A|E|I|O|U)].*[^(A|E|I|O|U)]$');
