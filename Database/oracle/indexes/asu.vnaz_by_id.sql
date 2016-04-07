DROP INDEX ASU.VNAZ_BY_ID
/

--
-- VNAZ_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.VNAZ_BY_ID ON ASU.VNAZ
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          5760K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

