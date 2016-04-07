DROP INDEX ASU.TLOG_BY_OWNER_TABLE_FIELD
/

--
-- TLOG_BY_OWNER_TABLE_FIELD  (Index) 
--
CREATE INDEX ASU.TLOG_BY_OWNER_TABLE_FIELD ON ASU.TLOG
(FK_OWNER, FC_TABLE, FC_FIELD, FC_NEW)
NOLOGGING
TABLESPACE LOG_INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

