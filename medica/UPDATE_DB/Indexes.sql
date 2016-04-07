DROP INDEX MED.TKART_DEL_KARTID_MEDICID_NAME
/
DROP INDEX MED.TKART_MEDICID_NAME
/
DROP INDEX MED.TKART_MOID
/

CREATE INDEX MED.TKART_FD_GODEN ON MED.TKART(  FD_GODEN DESC  ) 
/

CREATE INDEX MED.TTREB_MOGR_TO ON MED.TTREB(  FK_MOGROUPID_TO ASC  ) 
/
CREATE INDEX MED.TTREB_MOGR_FROM ON MED.TTREB(  FK_MOGROUPID_FROM ASC  ) 
/
quit
/
