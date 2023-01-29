/**********************************************************************************************
 * P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5): *
 *                                                                                            *
 *   * * * * *                                                                                *
 *   * * * *                                                                                  *
 *   * * *                                                                                    *
 *   * *                                                                                      *
 *   *                                                                                        *
 *                                                                                            *
 **********************************************************************************************/

SET @P = '* ';
SET @i = 21;
SELECT REPEAT(@P, @i := @i - 1)
FROM INFORMATION_SCHEMA.TABLES LIMIT 20;
