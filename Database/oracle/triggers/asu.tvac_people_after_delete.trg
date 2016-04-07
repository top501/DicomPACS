DROP TRIGGER ASU.TVAC_PEOPLE_AFTER_DELETE
/

--
-- TVAC_PEOPLE_AFTER_DELETE  (Trigger) 
--
--  Dependencies: 
--   PKG_VACCIN (Package)
--   TVAC_PEOPLE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVAC_PEOPLE_AFTER_DELETE" 
 AFTER
  DELETE
 ON asu.tvac_people
REFERENCING NEW AS NEW OLD AS OLD
BEGIN
  PKG_VACCIN.RESTORE_VAC_PLAN_COLLECTION;
END;
/
SHOW ERRORS;

