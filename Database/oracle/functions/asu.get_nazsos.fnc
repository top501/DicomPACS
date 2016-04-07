DROP FUNCTION ASU.GET_NAZSOS
/

--
-- GET_NAZSOS  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   TNAZSOS (Table)
--
CREATE OR REPLACE FUNCTION ASU."GET_NAZSOS" (pFK_NAZSOSID IN NUMBER) RETURN VARCHAR2 IS
  -- Created by NoName Modified by TimurLan
  CURSOR cTemp IS
    SELECT FC_NAME
      FROM TNAZSOS
     WHERE FK_ID = pFK_NAZSOSID;
  nTemp TNAZSOS.FC_NAME%TYPE;
BEGIN
  OPEN cTemp;
  FETCH cTemp INTO nTemp;
  CLOSE cTemp;
  RETURN NVL(nTemp,'');
END;
/

SHOW ERRORS;

