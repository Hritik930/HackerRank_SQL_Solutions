/***************************
 * Author: Zachary Perales *
 ***************************/

SELECT ROUND(SQRT(POWER(ABS(MIN(LONG_W) - MAX(LONG_W)), 2) 
                  + POWER(ABS(MIN(LAT_N) - MAX(LAT_N)), 2)), 4)
FROM STATION;
