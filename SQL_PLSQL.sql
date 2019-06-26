DECLARE 
    CURSOR associateCursor is select * from Associate;
    associateRow ASSOCIATE%ROWTYPE;
begin
      OPEN associateCursor;
      LOOP
      FETCH associateCursor INTO associateRow;
        DBMS_OUTPUT.PUT_LINE(associateRow.ASSOCIATEID||' '||associateRow.firstName||' '||associateRow.lastName);
        EXIT WHEN associateCursor%NOTFOUND;
       
      END LOOP;
  CLOSE associateCursor;  
end;
