/***************************
 * Author: Zachary Perales *
 ***************************/

SELECT ROUND(LONG_W,4)
FROM (SELECT *
      FROM STATION
      WHERE LAT_N < 137.2345
      ORDER BY LAT_N DESC)
WHERE ROWNUM <= 1;
