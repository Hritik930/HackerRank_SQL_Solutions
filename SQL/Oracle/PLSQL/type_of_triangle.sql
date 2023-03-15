/***************************
 * Author: Zachary Perales *
 ***************************/

SET SERVEROUTPUT ON
BEGIN
FOR i IN (select A, B, C from TRIANGLES)
LOOP
  IF (i.A + i.B) <= i.C THEN
    DBMS_OUTPUT.PUT_LINE('Not A Triangle');
  ELSIF i.A = i.B AND i.A = i.C THEN
    DBMS_OUTPUT.PUT_LINE('Equilateral');
  ELSIF i.A != i.B AND i.A != i.C AND i.B != i.C THEN
    DBMS_OUTPUT.PUT_LINE('Scalene');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Isosceles');
  END IF;
END LOOP;
END;
/
