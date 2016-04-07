DROP TABLE ASU.TRASPRED_PLAN CASCADE CONSTRAINTS
/

--
-- TRASPRED_PLAN  (Table) 
--
CREATE TABLE ASU.TRASPRED_PLAN
(
  FK_ID          NUMBER(15),
  FK_NAZ_RES_ID  NUMBER(15),
  FK_GRAPHID     NUMBER(15),
  FK_RASP_VRACH  NUMBER(10),
  FD_RASP_DATE   DATE
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON COLUMN ASU.TRASPRED_PLAN.FK_ID IS 'SEQUENCE=[SEQ_TRASPRED_PLAN]'
/

COMMENT ON COLUMN ASU.TRASPRED_PLAN.FK_NAZ_RES_ID IS '�������������� ���������� (������� �����������)'
/

COMMENT ON COLUMN ASU.TRASPRED_PLAN.FK_GRAPHID IS '������'
/

COMMENT ON COLUMN ASU.TRASPRED_PLAN.FK_RASP_VRACH IS '���� ��������������'
/

COMMENT ON COLUMN ASU.TRASPRED_PLAN.FD_RASP_DATE IS '���� �������������'
/


--
-- TRASPRED_PLAN_ID  (Index) 
--
--  Dependencies: 
--   TRASPRED_PLAN (Table)
--
CREATE UNIQUE INDEX ASU.TRASPRED_PLAN_ID ON ASU.TRASPRED_PLAN
(FK_ID)
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


--
-- TRASPRED_PLAN_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TRASPRED_PLAN (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRASPRED_PLAN_BEFORE_INSERT" 
BEFORE INSERT 
ON traspred_plan
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
begin
  select SEQ_TRASPRED_PLAN.nextval into :NEW.fk_id from dual;
end;
/
SHOW ERRORS;

