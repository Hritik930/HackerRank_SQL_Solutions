/***************************
 * Author: Zachary Perales *
 ***************************/

SELECT ROUND(LONG_W, 4)
FROM (SELECT *
     FROM STATION
     WHERE LAT_N > 38.7780
     ORDER BY LAT_N ASC)
WHERE ROWNUM <= 1;
