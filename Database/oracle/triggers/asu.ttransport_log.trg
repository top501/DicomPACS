DROP TRIGGER ASU.TTRANSPORT_LOG
/

--
-- TTRANSPORT_LOG  (Trigger) 
--
--  Dependencies: 
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   TTRANSPORT (Table)
--   PKG_LOG (Package)
--
CREATE OR REPLACE TRIGGER ASU."TTRANSPORT_LOG" 
 AFTER
 INSERT OR DELETE OR UPDATE
 ON ASU.TTRANSPORT  REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
DECLARE
  nTemp NUMBER;
BEGIN
  if INSERTING then
    PKG_LOG.Do_log('TTRANSPORT', 'FK_ID', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fk_id), :new.fk_id);
    PKG_LOG.Do_log('TTRANSPORT', 'FC_NAME', 'INSERT', null, PKG_LOG.GET_VALUE(:new.fc_name), :new.fk_id);
  elsif DELETING then
    PKG_LOG.Do_log('TTRANSPORT', 'FK_ID', 'DELETE', PKG_LOG.GET_VALUE(:old.fk_id), null, :old.fk_id);
    PKG_LOG.Do_log('TTRANSPORT', 'FC_NAME', 'DELETE', PKG_LOG.GET_VALUE(:old.FC_NAME), null, :old.fk_id);
  elsif UPDATING then
    PKG_LOG.Do_log('TTRANSPORT', 'FK_ID', 'UPDATE', PKG_LOG.GET_VALUE(:old.fk_id), PKG_LOG.GET_VALUE(:new.fk_id), :old.fk_id);
    if UPDATING ('FC_NAME') AND PKG_LOG.GET_VALUE(:old.FC_NAME) <> PKG_LOG.GET_VALUE(:new.FC_NAME) then
      PKG_LOG.Do_log('TTRANSPORT', 'FC_NAME', 'UPDATE', PKG_LOG.GET_VALUE(:old.FC_NAME), PKG_LOG.GET_VALUE(:new.FC_NAME), :old.fk_id);
    end if;
  end if;
  null;
END TTRANSPORT_LOG;
/
SHOW ERRORS;

