/**********************************************************************************
 * Query the list of CITY names from STATION that either do not start with vowels *
 * or do not end with vowels. Your result cannot contain duplicates.              *
 **********************************************************************************/

SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(UPPER(CITY), '^[^(A|E|I|O|U)]|[^(A|E|I|O|U)]$');
