ALTER TABLE ASU.TVACCIN_PREP_STORE
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TVACCIN_PREP_STORE CASCADE CONSTRAINTS
/

--
-- TVACCIN_PREP_STORE  (Table) 
--
--  Dependencies: 
--   TVACCIN_PREP (Table)
--   TVAC_STORE (Table)
--
CREATE TABLE ASU.TVACCIN_PREP_STORE
(
  FK_ID           NUMBER                        NOT NULL,
  FK_VACCIN_PREP  NUMBER,
  FC_SERIES       VARCHAR2(50 BYTE),
  FD_FITNESS      DATE,
  FN_REMAINDER    NUMBER(16,3),
  FK_STORE        NUMBER
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          40K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOLOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

COMMENT ON TABLE ASU.TVACCIN_PREP_STORE IS '����� ���������� ��� ��������������
Author: Ura'
/

COMMENT ON COLUMN ASU.TVACCIN_PREP_STORE.FK_ID IS 'SEQUENCE=[SEQ_TVACCIN_PREP]'
/

COMMENT ON COLUMN ASU.TVACCIN_PREP_STORE.FK_VACCIN_PREP IS '������ �� TVACCIN_PREP'
/

COMMENT ON COLUMN ASU.TVACCIN_PREP_STORE.FC_SERIES IS '�����'
/

COMMENT ON COLUMN ASU.TVACCIN_PREP_STORE.FD_FITNESS IS '��������'
/

COMMENT ON COLUMN ASU.TVACCIN_PREP_STORE.FN_REMAINDER IS '�������'
/

COMMENT ON COLUMN ASU.TVACCIN_PREP_STORE.FK_STORE IS '��� ������ �� TVAC_STORE.FK_ID'
/


--
-- PK_TVACCIN_PREP_STORE  (Index) 
--
--  Dependencies: 
--   TVACCIN_PREP_STORE (Table)
--
CREATE UNIQUE INDEX ASU.PK_TVACCIN_PREP_STORE ON ASU.TVACCIN_PREP_STORE
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
-- TVACCIN_PREP_STORE$FK_STORE  (Index) 
--
--  Dependencies: 
--   TVACCIN_PREP_STORE (Table)
--
CREATE INDEX ASU.TVACCIN_PREP_STORE$FK_STORE ON ASU.TVACCIN_PREP_STORE
(FK_STORE)
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
-- TVACCIN_PREP_STORE_FK_VACCIN_P  (Index) 
--
--  Dependencies: 
--   TVACCIN_PREP_STORE (Table)
--
CREATE INDEX ASU.TVACCIN_PREP_STORE_FK_VACCIN_P ON ASU.TVACCIN_PREP_STORE
(FK_VACCIN_PREP)
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
-- TVACCIN_PER_STORE_BEFORE_INSER  (Trigger) 
--
--  Dependencies: 
--   TVACCIN_PREP_STORE (Table)
--
CREATE OR REPLACE TRIGGER ASU."TVACCIN_PER_STORE_BEFORE_INSER" 
 BEFORE
  INSERT
 ON ASU.TVACCIN_PREP_STORE REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
  IF :NEW.fk_id IS NULL
  THEN
    SELECT SEQ_TVACCIN_PREP.NEXTVAL
      INTO :NEW.fk_id
      FROM DUAL;
  END IF;

END;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TVACCIN_PREP_STORE 
-- 
ALTER TABLE ASU.TVACCIN_PREP_STORE ADD (
  CONSTRAINT PK_TVACCIN_PREP_STORE
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

-- 
-- Foreign Key Constraints for Table TVACCIN_PREP_STORE 
-- 
ALTER TABLE ASU.TVACCIN_PREP_STORE ADD (
  CONSTRAINT CK_TVACCIN_PREP$TVACCIN_PREP 
 FOREIGN KEY (FK_VACCIN_PREP) 
 REFERENCES ASU.TVACCIN_PREP (FK_ID),
  CONSTRAINT FK_TVACCIN_PREP$TVAC_STORE 
 FOREIGN KEY (FK_STORE) 
 REFERENCES ASU.TVAC_STORE (FK_ID))
/
