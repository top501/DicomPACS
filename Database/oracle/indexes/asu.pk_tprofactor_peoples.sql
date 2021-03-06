DROP INDEX ASU.PK_TPROFACTOR_PEOPLES
/

--
-- PK_TPROFACTOR_PEOPLES  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TPROFACTOR_PEOPLES ON ASU.TPROFFACTOR_PEOPLES
(FK_ID)
NOLOGGING
TABLESPACE USR
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


