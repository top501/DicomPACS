ALTER TABLE ASU.TBL_COMPARISONS
  DROP CONSTRAINT TBL_COMPARISONS_ID
/

-- 
-- Non Foreign Key Constraints for Table TBL_COMPARISONS 
-- 
ALTER TABLE ASU.TBL_COMPARISONS ADD (
  CONSTRAINT TBL_COMPARISONS_ID
 PRIMARY KEY
 (FK_ID))
/
