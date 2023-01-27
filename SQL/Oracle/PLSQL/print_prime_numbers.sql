SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE "CALCULATE_PRIMES"(limit IN NUMBER)
IS
BEGIN
    FOR outer IN 1..limit
    LOOP
        FOR inner IN 1..outer
        LOOP
            IF MOD(outer,inner) = 0 AND inner != 1 AND inner != outer THEN
                EXIT;
            END IF;
            IF outer != 1 and inner = outer THEN
                IF outer != 2 THEN
                    DBMS_OUTPUT.PUT('&');
                END IF;
                DBMS_OUTPUT.PUT(outer);
            END IF;
        END LOOP;
        IF outer = limit THEN
            DBMS_OUTPUT.PUT_LINE('');
        END IF;
    END LOOP;
END;
/

BEGIN
    CALCULATE_PRIMES(1000);
END;
/
