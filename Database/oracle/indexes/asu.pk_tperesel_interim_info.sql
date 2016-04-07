DROP INDEX ASU.PK_TPERESEL_INTERIM_INFO
/

--
-- PK_TPERESEL_INTERIM_INFO  (Index) 
--
CREATE UNIQUE INDEX ASU.PK_TPERESEL_INTERIM_INFO ON ASU.TPERESEL_INTERIM_INFO
(FK_PERESEL_INTERIM)
NOLOGGING
TABLESPACE USR
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

