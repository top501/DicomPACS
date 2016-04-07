DROP INDEX ASU.TMEDIC_PK
/

--
-- TMEDIC_PK  (Index) 
--
CREATE UNIQUE INDEX ASU.TMEDIC_PK ON ASU.TMEDIC
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

