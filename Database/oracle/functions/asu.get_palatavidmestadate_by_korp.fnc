DROP FUNCTION ASU.GET_PALATAVIDMESTADATE_BY_KORP
/

--
-- GET_PALATAVIDMESTADATE_BY_KORP  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TROOM (Table)
--   GET_PALATAMESTADATE (Function)
--   GET_PALATAVID (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_PALATAVIDMESTADATE_BY_KORP" -- Created by TimurLan
  (pFK_VIDID IN NUMBER,pFD_DATA IN DATE,pFK_KORPID IN NUMBER)
  RETURN  NUMBER IS
  nTemp NUMBER;
  CURSOR cTemp IS SELECT SUM(GET_PALATAMESTADATE(FK_ID,TRUNC(pFD_DATA)))
                    FROM TROOM
                   WHERE FK_KORPID=pFK_KORPID
                     AND GET_PALATAVID(TROOM.FK_ID,TRUNC(pFD_DATA))= pFK_VIDID;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO nTemp;
  CLOSE cTemp;
  RETURN nTemp;
END;
/

SHOW ERRORS;

