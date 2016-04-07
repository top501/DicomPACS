DROP TABLE ASU.TREPROWS CASCADE CONSTRAINTS
/

--
-- TREPROWS  (Table) 
--
CREATE TABLE ASU.TREPROWS
(
  FN_ORDER       NUMBER,
  FC_CAPTION     VARCHAR2(4000 BYTE),
  FC_MKB10       VARCHAR2(100 BYTE),
  FC_CHAR        VARCHAR2(4000 BYTE),
  FC_REPORT      VARCHAR2(10 BYTE),
  FC_NUMERAT     VARCHAR2(100 BYTE),
  FC_DOPNUMERAT  VARCHAR2(100 BYTE)
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          80K
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

