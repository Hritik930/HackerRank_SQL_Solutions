/***********************************************************************************
 * Query a list of CITY names from STATION for cities that have an even ID number. *
 * Print the results in any order, but exclude duplicates from the answer.         *
 ***********************************************************************************/

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;
