SELECT OR REPLACE POCEDURE (IN YRS_OF_EXP,IN EMPID)
IS BONUS NUMBER
BEGIN
SELECT YRS_OF_EXP,EMPID
FROM EMPLOYEE_INFO
INTO RECORD VARCHAR2(30)
IF YRS_OF_EXP = 1
THEN
DBMS_OUTPUT.PUT_LINE('JOINING BONUS IS ELIGIBLE');
ELSE
DBMS_OUTPUT.PUT_LINE('JOINING BONUS IS NOT  ELIGIBLE');
END IF;
END;

