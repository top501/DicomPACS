DROP TRIGGER ASU.TSOTRLACK_BEF_INS
/

--
-- TSOTRLACK_BEF_INS  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TSOTRLACK (Sequence)
--   TSOTRLACK (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSOTRLACK_BEF_INS"
BEFORE INSERT
ON ASU.TSOTRLACK REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  IF :NEW.FK_ID IS NULL THEN
     SELECT ASU.SEQ_TSOTRLACK.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
  END IF;
End;
/
SHOW ERRORS;

