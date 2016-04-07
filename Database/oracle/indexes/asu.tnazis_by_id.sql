DROP INDEX ASU.TNAZIS_BY_ID
/

--
-- TNAZIS_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TNAZIS_BY_ID ON ASU.TNAZIS
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          704K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

