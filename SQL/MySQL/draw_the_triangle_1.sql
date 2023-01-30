/***************************
 * Author: Zachary Perales *
 ***************************/

SET @P = '* ';
SET @i = 21;
SELECT REPEAT(@P, @i := @i - 1)
FROM INFORMATION_SCHEMA.TABLES LIMIT 20;
