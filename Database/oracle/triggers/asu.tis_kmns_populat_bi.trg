DROP TRIGGER ASU.TIS_KMNS_POPULAT_BI
/

--
-- TIS_KMNS_POPULAT_BI  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   SEQ_TIS_KMNS_POPULAT (Sequence)
--   TIS_KMNS_POPULAT (Table)
--
CREATE OR REPLACE TRIGGER ASU.TIS_KMNS_POPULAT_BI
  BEFORE INSERT
  ON ASU.TIS_KMNS_POPULAT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT asu.seq_TIS_KMNS_POPULAT.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;
END;
/
SHOW ERRORS;

