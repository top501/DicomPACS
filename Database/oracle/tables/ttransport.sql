DROP TABLE ASU.TTRANSPORT CASCADE CONSTRAINTS
/

--
-- TTRANSPORT  (Table) 
--
CREATE TABLE ASU.TTRANSPORT
(
  FK_ID       NUMBER(15),
  FC_NAME     VARCHAR2(30 BYTE),
  FL_DEFAULT  NUMBER(1)                         DEFAULT 0
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TTRANSPORT IS '���������� ����� ���������� by TimurLan'
/

COMMENT ON COLUMN ASU.TTRANSPORT.FK_ID IS 'ID'
/

COMMENT ON COLUMN ASU.TTRANSPORT.FC_NAME IS '��������'
/

COMMENT ON COLUMN ASU.TTRANSPORT.FL_DEFAULT IS '����. ��-���������'
/


--
-- TTRANSPORT_LOG  (Trigger) 
--
--  Dependencies: 
--   TTRANSPORT (Table)
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

