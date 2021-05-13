SET @v1 = 1612521;
SET @v2 = 1145072;
SET @v3 = 1828467;
SET @v4 = 'MGT382';
SET @v5 = 'Amber Hill';
SET @v6 = 'MGT';
SET @v7 = 'EE';			  
SET @v8 = 'MAT';
-- 6. List the names of students who have taken all courses from dep @v8
-- Results are 0
-- Having Count
SELECT name,deptId, COUNT(name) as num_of_taken_courses
FROM Student s
INNER JOIN Transcript t
ON s.id = t.studId
INNER JOIN Course c
ON t.crsCode = c.crsCode
WHERE deptId = 'MAT'
GROUP BY name
ORDER BY name DESC

/*The student's name is the same as the professor
 Used SELECT *
FROM Professor
WHERE name = @v5
in another queery to obtain profId
Also, the provided query does not output any result
*/ 
