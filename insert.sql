/*PUNTO 2.B*/

INSERT INTO student (name, program)
VALUES('Santiago Sanchez', 'Ingenieria de Sistemas'),
('Sebastian Rey', 'Ingenieria de Sistemas'),
('Alejandro Villamil', 'Ingenieria de Sistemas'),
('Isabella Sanchez', 'Ingenieria Industrial'),
('Stella Esquivel', 'Administracion de Empresas');

INSERT INTO course(title, syllabus, credits)
VALUES('Base de datos', 'Plan1', 3),
('Desarrollo de Software', 'Plan2', 3),
('Sistemas Operativos', 'Plan3', 3),
('Arquitectura de Computadores', 'Plan4', 3),
('Matematicas Discretas', 'Plan5', 3);

INSERT INTO enrols(student_id, course_id, sec_id, semester, year, grade)
VALUES(7488, 837827, 1,  4, 2002, 3.789),
(7656, 837850, 8,  2, 2012, 4),
(7824, 837873, 6,  5, 2005, 3.5),
(7992, 837896, 10,  7, 2009, 4.2),
(8160, 837919, 3,  2, 1998, 2.89);

INSERT INTO instructor(name, dept, title)
VALUES('instructor1', 'dept1', 'title1'),
('instructor2', 'dept2', 'title2'),
('instructor3', 'dept3', 'title3'),
('instructor4', 'dept4', 'title4'),
('instructor5', 'dept5', 'title5');

INSERT INTO course_offering (course_id, sec_id, year, semester, time, classroom)
VALUES(837827, 1, 2022, 1, '2022/07/02', 'B01'),
(837850, 2, 2022, 3, '2022/07/02', 'B02'),
(837873, 3, 2022, 9, '2022/07/02', 'B03'),
(837896, 4, 2022, 4, '2022/07/02', 'B04'),
(837919, 5, 2022, 2, '2022/07/02', 'B05');

INSERT INTO teaches (course_id, sec_id, year, semester, instructor_id)
VALUES(837827, 1, 2022, 1, 1),
(837850, 3, 2022, 8, 2),
(837873, 6, 2022, 5, 3),
(837896, 2, 2022, 6, 4),
(837919, 4, 2022, 2, 5);

INSERT INTO requires (main_course, prerequisite)
VALUES(837827, 837850),
(837827, 837873),
(837873, 837919),
(837919, 837850),
(837896, 837850);



