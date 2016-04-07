ALTER TABLE ASU.TRECIPEPERCENT
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TRECIPEPERCENT CASCADE CONSTRAINTS
/

--
-- TRECIPEPERCENT  (Table) 
--
CREATE TABLE ASU.TRECIPEPERCENT
(
  FK_ID         NUMBER(10)                      NOT NULL,
  FC_NAME       VARCHAR2(100 BYTE),
  FL_PRIVELEGE  NUMBER(1),
  FC_SYNONIM    VARCHAR2(30 BYTE),
  FN_PERCENT    NUMBER,
  FL_DEFAULT    NUMBER                          DEFAULT 0
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

COMMENT ON TABLE ASU.TRECIPEPERCENT IS 'Sill - ������� ������ �������'
/

COMMENT ON COLUMN ASU.TRECIPEPERCENT.FK_ID IS 'SEQUENCE=[ASU]'
/

COMMENT ON COLUMN ASU.TRECIPEPERCENT.FC_NAME IS '��������'
/

COMMENT ON COLUMN ASU.TRECIPEPERCENT.FL_PRIVELEGE IS '������� "��������". 0 - ������� (107�); 1 - ����� (148-1/�-06(�) (��������-�����������); 2 - 148-1/�-88 (��������-������������)'
/

COMMENT ON COLUMN ASU.TRECIPEPERCENT.FC_SYNONIM IS '������� ���. �������, ���������� ���������� ��� ���� �������'
/

COMMENT ON COLUMN ASU.TRECIPEPERCENT.FN_PERCENT IS '�����, ������������ ������'
/

COMMENT ON COLUMN ASU.TRECIPEPERCENT.FL_DEFAULT IS '1 - �������� �� ���������'
/


--
-- TRECIPEPERCENT  (Index) 
--
--  Dependencies: 
--   TRECIPEPERCENT (Table)
--
CREATE UNIQUE INDEX ASU.TRECIPEPERCENT ON ASU.TRECIPEPERCENT
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
-- TRECIPEPERCENT_BEFORE_INS  (Trigger) 
--
--  Dependencies: 
--   TRECIPEPERCENT (Table)
--
CREATE OR REPLACE TRIGGER ASU."TRECIPEPERCENT_BEFORE_INS" 
  BEFORE INSERT ON ASU.TRECIPEPERCENT   REFERENCING OLD AS OLD NEW AS NEW
  FOR EACH ROW
DECLARE

BEGIN
  SELECT ASU.SEQ_TRECIPEPERCENT.nextval into :new.FK_ID from dual;
END TRECIPEPERCENT_BEFORE_INS;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TRECIPEPERCENT 
-- 
ALTER TABLE ASU.TRECIPEPERCENT ADD (
  CONSTRAINT TRECIPEPERCENT
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
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
               ))
/
