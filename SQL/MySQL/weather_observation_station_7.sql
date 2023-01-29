/****************************************************************************
 * Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u) *
 * from STATION. Your result cannot contain duplicates.                     *
 ****************************************************************************/

SELECT DISTINCT CITY FROM STATION 
WHERE RIGHT(CITY,1) = 'A' 
	OR RIGHT(CITY,1) = 'E' 
	OR RIGHT(CITY,1) = 'I' 
	OR RIGHT(CITY,1) = 'O' 
	OR RIGHT(CITY,1) = 'U';

