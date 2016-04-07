DROP TRIGGER ASU.TPLANMAIN_DELETE_ALL
/

--
-- TPLANMAIN_DELETE_ALL  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   TPLANMAIN (Table)
--   TPLANSLAVE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TPLANMAIN_DELETE_ALL" 
AFTER DELETE
ON ASU.TPLANMAIN REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  Delete from TPLANSLAVE where FK_MAINID = :OLD.FK_ID;
end;
/
SHOW ERRORS;

