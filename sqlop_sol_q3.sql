SET @v1 = 1612521;
SET @v2 = 1145072;
SET @v3 = 1828467;
SET @v4 = 'MGT382';
SET @v5 = 'Amber Hill';
SET @v6 = 'MGT';
SET @v7 = 'EE';			  
SET @v8 = 'MAT';
EXPLAIN ANALYZE
SELECT name 
FROM Student s
INNER JOIN Transcript t
ON s.id = t.studId
WHERE crsCode = @v4
/*Changing into a filtered inner join reduced the actual time from .32 to .045 while
maintaining the same results*/