/*PUNTO 3.A*/
SELECT i.dept, i.title 
FROM instructor as i;

/*PUNTO 3.B*/
SELECT s.name, s.program
FROM student AS s
WHERE s.student_id = 7656;

/*PUNTO 3.C*/
SELECT s.name
FROM enrols AS e
JOIN student AS s ON s.student_id = e.student_id
WHERE e.course_id = 837873;

/*PUNTO 3.D*/
SELECT s.name as better_students, e.grade
FROM enrols AS e
JOIN student AS s ON s.student_id = e.student_id
WHERE e.grade >= 4 and e.year >= 1900 and e.year <= 2018
ORDER BY better_students ASC;

