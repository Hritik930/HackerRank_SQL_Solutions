/***************************
 * Author: Zachary Perales *
 ***************************/

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY lat_n DESC
LIMIT 1;
