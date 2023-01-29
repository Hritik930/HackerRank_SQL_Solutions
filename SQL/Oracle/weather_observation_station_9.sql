/****************************************************************************
 * Query the list of CITY names from STATION that do not start with vowels. *
 * Your result cannot contain duplicates.                                   *
 ****************************************************************************/

SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(UPPER(CITY), '^[^(A|E|I|O|U)]');
