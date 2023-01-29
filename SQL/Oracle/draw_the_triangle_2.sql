/**********************************************************************************************
 * P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5): *
 *                                                                                            *
 *   *                                                                                        *
 *   * *                                                                                      *
 *   * * *                                                                                    *
 *   * * * *                                                                                  *
 *   * * * * *                                                                                *
 *                                                                                            *
 **********************************************************************************************/

SELECT RPAD('*', LEVEL * 2, ' *')
FROM DUAL
CONNECT BY LEVEL <= 20;
