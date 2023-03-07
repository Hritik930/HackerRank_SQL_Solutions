/***********************************************************
 * Author: Zachary Perales                                 *
 *                                                         *
 * Note: Sorting must be done in a subquery                *
 *       because Oracle assigns row numbers before sorting *
 ***********************************************************/

SELECT *
FROM (SELECT (SALARY * MONTHS), COUNT(*)
        FROM EMPLOYEE
        GROUP BY (SALARY * MONTHS)
        ORDER BY (SALARY * MONTHS) DESC)
WHERE ROWNUM = 1;
