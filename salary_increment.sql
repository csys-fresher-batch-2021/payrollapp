--for_salary_increment
CREATE OR REPLACE PROCEDURE sal_increment(
    in_EMPLOYEE_CATEGORY, SALARY_INFO.EMPLOYEE_CATEGORY%TYPE  
)
IS
  r_contact SALARY_INFO%ROWTYPE;
BEGIN
  -- get contact based on customer id
  SELECT *
  INTO r_contact
  FROM SALARY_INFO
  WHERE EMPLOYEE_CATEGORY = in_EMPLOYEE_CATEGORY;

  -- print out contact's information
  dbms_output.put_line( r_contact.EMPLOYEE_CATEGORY || ' ' ||
  r_contact.basic || ' ' || r_contact.insurance||' ' );

EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;