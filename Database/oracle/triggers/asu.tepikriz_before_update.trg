DROP TRIGGER ASU.TEPIKRIZ_BEFORE_UPDATE
/

--
-- TEPIKRIZ_BEFORE_UPDATE  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DUAL (Synonym)
--   TEPIKRIZ (Table)
--
CREATE OR REPLACE TRIGGER ASU."TEPIKRIZ_BEFORE_UPDATE" 
  BEFORE INSERT
  ON ASU.TEPIKRIZ   REFERENCING NEW AS NEW OLD AS OLD
  FOR EACH ROW
Begin
  select sysdate into :new.fd_date from dual;
End;
/
SHOW ERRORS;

