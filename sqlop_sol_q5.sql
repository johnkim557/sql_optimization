SET @v1 = 1612521;
SET @v2 = 1145072;
SET @v3 = 1828467;
SET @v4 = 'MGT382';
SET @v5 = 'Amber Hill';
SET @v6 = 'MGT';
SET @v7 = 'EE';			  
SET @v8 = 'MAT';
-- 5. List the names of students who have taken a course from dep v6(name).

EXPLAIN ANALYZE
SELECT name, studId,deptId
FROM Student s
INNER JOIN Transcript t
ON s.id = t.studId
INNER JOIN Course c
ON t.crsCode = c.crsCode
WHERE deptId = @v6 AND deptId <> @v7
/*The student's name is the same as the professor
 Used SELECT *
FROM Professor
WHERE name = @v5
in another queery to obtain profId
Also, the provided query does not output any result
*/ 
