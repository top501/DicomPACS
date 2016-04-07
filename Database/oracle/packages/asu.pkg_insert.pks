DROP PACKAGE ASU.PKG_INSERT
/

--
-- PKG_INSERT  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE ASU."PKG_INSERT" IS
FUNCTION INSERT_INTO_TPRIEMNAZ(pFK_PARENTID IN NUMBER, pFK_NAZID IN NUMBER, pFK_STATE IN NUMBER DEFAULT -1)
RETURN NUMBER;
FUNCTION INSERT_INTO_TDIAGID(pFK_DIAGID IN NUMBER, pFK_NAZID IN NUMBER)
RETURN NUMBER;

END;
/

SHOW ERRORS;

