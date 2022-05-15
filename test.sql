CREATE TABLE ints AS
  WITH RECURSIVE i(n) AS (
      SELECT 1 UNION
      SELECT n+1 FROM i WHERE n < 100
  )
  SELECT n FROM i;