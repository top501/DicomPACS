DROP INDEX ASU.TDOPRIZYV_PEOPL
/

--
-- TDOPRIZYV_PEOPL  (Index) 
--
CREATE UNIQUE INDEX ASU.TDOPRIZYV_PEOPL ON ASU.TDOPRIZYV
(FK_PEPLID)
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

