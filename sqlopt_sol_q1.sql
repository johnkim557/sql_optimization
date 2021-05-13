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
FROM Student
WHERE id = 1612521

/*Changing the set variables to direct i/o improves the actual time */
/*Would it be possible to create an index of this range*/
/* The actual time is reduced by .001 when inputing the actual integer instead of a set variable*/