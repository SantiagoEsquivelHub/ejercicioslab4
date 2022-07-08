
/*PUNTO 1.A*/

/*Creamos la base de datos*/
CREATE DATABASE ejercicio3lab4;

/*Creamos una secuencia que inicia con 7488 y se incrementa en 168*/
CREATE SEQUENCE CountBy168 
    START WITH 7488
    INCREMENT BY 168; 

/*Creamos la tabla student con la secuencia countby168 en el atributo student_id*/
CREATE TABLE student(
    student_id INT DEFAULT NEXTVAL('countby168'),
    name VARCHAR(100) NULL,
    program VARCHAR(100) NULL,
  	PRIMARY KEY (student_id)
);


/*PUNTO 1.B*/

/*Creamos una secuencia que inicia con 837827 y se incrementa en 23*/
CREATE SEQUENCE CountBy23 
    START WITH 837827 
    INCREMENT BY 23; 

/*Creamos la tabla course con la secuencia countby23 en el atributo course_id*/
CREATE TABLE course(
    course_id INT NOT NULL DEFAULT NEXTVAL('countby23'),
    title VARCHAR(100) NULL,
    syllabus VARCHAR(100) NULL,
    credits INT NULL,
  	PRIMARY KEY (course_id)
);

/*PUNTO 1.C*/
/*Creamos la tabla enrols*/
CREATE TABLE enrols(
	student_id INT NOT NULL,
	course_id INT NOT NULL,
	sec_id INT NOT NULL,
	semester INT NOT NULL,
	year INT NOT NULL,
	grade NUMERIC(18,2) NULL,
  	PRIMARY KEY (student_id, course_id, sec_id, semester, year),
  	FOREIGN KEY (student_id) REFERENCES student(student_id),
  	FOREIGN KEY (course_id) REFERENCES course(course_id),
  	CHECK (grade>=1.00 and grade <=5.00)
);

/*Creamos las tablas restantes*/
CREATE TABLE instructor (
    instructor_id SERIAL,
    name VARCHAR(100) NULL,
    dept VARCHAR(100) NULL,
    title VARCHAR(100) NULL,
    PRIMARY KEY (instructor_id) 
);

CREATE TABLE course_offering (
    course_id INT NOT NULL,
    sec_id VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    semester INT NOT NULL,
    time DATE NULL,
    classroom VARCHAR(100) NULL,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    PRIMARY KEY (course_id, sec_id, year, semester)
);

CREATE TABLE teaches (
    course_id INT NOT NULL,
    sec_id VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    semester INT NOT NULL,
    instructor_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (instructor_id) REFERENCES instructor(instructor_id),
    PRIMARY KEY (course_id, sec_id, semester, instructor_id, year)
);

CREATE TABLE requires (
    main_course INT NOT NULL,
    prerequisite INT NOT NULL,
    FOREIGN KEY (main_course) REFERENCES course(course_id),
    FOREIGN KEY (prerequisite) REFERENCES course(course_id),
    PRIMARY KEY (main_course,prerequisite)
);

