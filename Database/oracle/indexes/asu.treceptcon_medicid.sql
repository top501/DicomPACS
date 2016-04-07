DROP INDEX ASU.TRECEPTCON_MEDICID
/

--
-- TRECEPTCON_MEDICID  (Index) 
--
CREATE INDEX ASU.TRECEPTCON_MEDICID ON ASU.TRECEPTCON
(FK_MEDICID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

