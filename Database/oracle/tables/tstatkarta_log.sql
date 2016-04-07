ALTER TABLE ASU.TSTATKARTA_LOG
 DROP PRIMARY KEY CASCADE
/

DROP TABLE ASU.TSTATKARTA_LOG CASCADE CONSTRAINTS
/

--
-- TSTATKARTA_LOG  (Table) 
--
CREATE TABLE ASU.TSTATKARTA_LOG
(
  FK_ID           NUMBER                        NOT NULL,
  FK_VRACHID      NUMBER,
  FP_APPLICATION  NUMBER,
  FC_FIELD        VARCHAR2(255 BYTE),
  FD_DATE         DATE,
  FK_PACID        NUMBER,
  FP_ACTION       NUMBER,
  FC_OLD          VARCHAR2(4000 BYTE),
  FC_NEW          VARCHAR2(4000 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          960K
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

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FK_ID IS 'SEQUENCE=[SEQ_TSTATKARTA_LOG]'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FK_VRACHID IS '��� ����������, ������������ ���������'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FP_APPLICATION IS '���������� - 0 - exe, 1 - dll'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FC_FIELD IS '����'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FD_DATE IS '���� � ����� ����������'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FK_PACID IS 'tkarta.fk_id'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FP_ACTION IS '0 - �������, 1 - ��������, 2 - ���������'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FC_OLD IS '������ ��������'
/

COMMENT ON COLUMN ASU.TSTATKARTA_LOG.FC_NEW IS '����� ��������'
/


--
-- TSTATKARTA_LOG_PACID  (Index) 
--
--  Dependencies: 
--   TSTATKARTA_LOG (Table)
--
CREATE INDEX ASU.TSTATKARTA_LOG_PACID ON ASU.TSTATKARTA_LOG
(FK_PACID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          544K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TSTATKARTA_LOG_PK  (Index) 
--
--  Dependencies: 
--   TSTATKARTA_LOG (Table)
--
CREATE UNIQUE INDEX ASU.TSTATKARTA_LOG_PK ON ASU.TSTATKARTA_LOG
(FK_ID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          416K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TSTATKARTA_LOG_VRACHID  (Index) 
--
--  Dependencies: 
--   TSTATKARTA_LOG (Table)
--
CREATE INDEX ASU.TSTATKARTA_LOG_VRACHID ON ASU.TSTATKARTA_LOG
(FK_VRACHID)
NOLOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          416K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL
/


--
-- TSTATKARTA_LOG_BEFORE_INSERT  (Trigger) 
--
--  Dependencies: 
--   TSTATKARTA_LOG (Table)
--
CREATE OR REPLACE TRIGGER ASU."TSTATKARTA_LOG_BEFORE_INSERT" 
BEFORE INSERT
ON ASU.TSTATKARTA_LOG REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
Begin
  SELECT SEQ_TSTATKARTA_LOG.NEXTVAL INTO :NEW.FK_ID FROM DUAL;
End;
/
SHOW ERRORS;


-- 
-- Non Foreign Key Constraints for Table TSTATKARTA_LOG 
-- 
ALTER TABLE ASU.TSTATKARTA_LOG ADD (
  CONSTRAINT TSTATKARTA_LOG_PK
 PRIMARY KEY
 (FK_ID)
    USING INDEX 
    TABLESPACE INDX
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          416K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
               ))
/
