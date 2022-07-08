/*PUNTO 5*/

/* Tablas */

/*Eliminamos llave foranea (enrols_student_id_fkey) de la tabla enrols*/
ALTER TABLE enrols
DROP CONSTRAINT enrols_student_id_fkey;

/*Eliminamos llave foranea (enrols_course_id_fkey) de la tabla enrols*/
ALTER TABLE enrols
DROP CONSTRAINT enrols_course_id_fkey;

/*Eliminamos llave primaria (student_pkey) de la tabla student*/
ALTER TABLE student
DROP CONSTRAINT student_pkey;

/*Eliminamos llave foranea (course_offering_course_id_fkey) de la tabla course_offering*/
ALTER TABLE course_offering
DROP CONSTRAINT course_offering_course_id_fkey;

/*Eliminamos llave foranea (teaches_course_id_fkey) de la tabla teaches*/
ALTER TABLE teaches
DROP CONSTRAINT teaches_course_id_fkey;

/*Eliminamos llave foranea (requires_main_course_fkey) de la tabla requires*/
ALTER TABLE requires
DROP CONSTRAINT requires_main_course_fkey;

/*Eliminamos llave foranea (requires_prerequisite_fkey) de la tabla requires*/
ALTER TABLE requires
DROP CONSTRAINT requires_prerequisite_fkey;

/*Eliminamos llave primaria (course_pkey) de la tabla course*/
ALTER TABLE course
DROP CONSTRAINT course_pkey;

/*Eliminamos la tabla student*/
DROP TABLE student;
 
/*Eliminamos la tabla course*/
DROP TABLE course;

/*Eliminamos la tabla teaches*/
DROP TABLE teaches;

/*Eliminamos la tabla requires*/
DROP TABLE requires;

/*Eliminamos la tabla instructor*/
DROP TABLE instructor;

/*Eliminamos la tabla course_offering*/
DROP TABLE course_offering;

/* Eliminamos los disparadores antes de eliminar la tabla enrols */
DROP TRIGGER trigger_cambioEnGrade ON enrols;
DROP TRIGGER trigger_noCeroMayor5 ON enrols;

/*Eliminamos la tabla enrols*/
DROP TABLE enrols;

/* Secuencias */
DROP SEQUENCE countby23;
DROP SEQUENCE countby168;

/* Procedimiento  */
DROP PROCEDURE create_teaches;
