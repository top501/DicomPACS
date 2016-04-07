DROP TABLE ASU.TNAZDEG CASCADE CONSTRAINTS
/

--
-- TNAZDEG  (Table) 
--
CREATE TABLE ASU.TNAZDEG
(
  FK_ID       NUMBER(15),
  FK_VRACHID  NUMBER(15),
  FK_LECHID   NUMBER(15),
  FC_REMARK   VARCHAR2(50 BYTE),
  FK_PACID    NUMBER(15),
  FD_DATA     DATE
)
TABLESPACE USR
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          520K
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

COMMENT ON TABLE ASU.TNAZDEG IS '?????? ?????????? ???????? ??????'
/

COMMENT ON COLUMN ASU.TNAZDEG.FK_LECHID IS '??? ??????� ?? TSMID'
/

