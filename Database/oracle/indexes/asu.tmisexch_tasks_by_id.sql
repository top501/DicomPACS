DROP INDEX ASU.TMISEXCH_TASKS_BY_ID
/

--
-- TMISEXCH_TASKS_BY_ID  (Index) 
--
CREATE UNIQUE INDEX ASU.TMISEXCH_TASKS_BY_ID ON ASU.TMISEXCH_TASKS
(FK_ID)
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

