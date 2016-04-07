DROP INDEX ASU.TRESLECH_PACID_NAZID
/

--
-- TRESLECH_PACID_NAZID  (Index) 
--
CREATE INDEX ASU.TRESLECH_PACID_NAZID ON ASU.TRESLECH
(FK_PACID, FK_NAZID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/

