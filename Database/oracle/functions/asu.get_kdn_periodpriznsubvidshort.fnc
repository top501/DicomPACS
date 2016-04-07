DROP FUNCTION ASU.GET_KDN_PERIODPRIZNSUBVIDSHORT
/

--
-- GET_KDN_PERIODPRIZNSUBVIDSHORT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   GET_KDN_PRIZN_SUBVID_SHORT (Function)
--
CREATE OR REPLACE FUNCTION ASU."GET_KDN_PERIODPRIZNSUBVIDSHORT" 
  ( pFD_DATA1 IN DATE,pFD_DATA2 IN DATE,pFK_PRIZNID IN NUMBER,pFK_KOD IN NUMBER,pFK_KOD2 IN NUMBER)
  RETURN  NUMBER IS
  i NUMBER;
  s NUMBER;
BEGIN
  S:=0;
  FOR i IN 0..pFD_DATA2-pFD_DATA1 LOOP
    S:=S+GET_KDN_PRIZN_SUBVID_SHORT(pFD_DATA1+i,pFK_PRIZNID,pFK_KOD2,pFK_KOD);
  END LOOP;
  RETURN S;
END;
/

SHOW ERRORS;

