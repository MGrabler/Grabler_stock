
CREATE OR REPLACE TRIGGER TRG_CUSTOMER
BEFORE INSERT OR UPDATE ON CUSTOMER
FOR EACH ROW

BEGIN
  
    IF((:NEW.CREDITS IS NULL) OR (:NEW.CREDITS < 0)) THEN
            raise_application_error (-20999, 'Cannot change the CREDITS (' || :NEW.CREDITS || ') it cannot be negative.');      
    END IF;
    
    IF NOT REGEXP_LIKE(:NEW.EMAIL, '^[a-zA-z][a-zA-z0-9]+@[a-zA-z]+\.[a-zA-z]+$') THEN
            --dbms_output.put_line(testvar || ' matches ''^K''');
            raise_application_error (-20998, :NEW.EMAIL || ' no valid email');
    END IF;

     IF(INSERTING) THEN 
        IF(:NEW.BIRTHDATE > SYSDATE) THEN
            raise_application_error (-20997, 'The birthdate (' || :NEW.BIRTHDATE || ') cannot be in the future!');  
        END IF;
    END IF;  
    
    IF(UPDATING) THEN 
        IF(:OLD.CUSTOMER_ID <> :NEW.CUSTOMER_ID) THEN
            raise_application_error (-20995, 'Cannot change the CUSTOMER_ID!');  
        END IF;
        :NEW.BIRTHDATE := :OLD.BIRTHDATE;
    END IF;  
    
END TRG_CUSTOMER;     
