DROP INDEX ASU.TCONFIRM_NAZ_OWNERID
/

--
-- TCONFIRM_NAZ_OWNERID  (Index) 
--
CREATE INDEX ASU.TCONFIRM_NAZ_OWNERID ON ASU.TCONFIRM_NAZ
(FK_OWNERID)
NOLOGGING
TABLESPACE INDX
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

