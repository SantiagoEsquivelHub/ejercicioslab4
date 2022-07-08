/*PUNTO 4.A.I*/

CREATE FUNCTION trigger_noCeroMayor5()
RETURNS trigger as $$
BEGIN 
    IF NEW.grade <= 0 OR NEW.grade > 5.0 THEN
    raise exception 'La nota debe estar entre el rango de 1.0 y 5.0';
    END IF;

    RETURN NEW;
END;
$$LANGUAGE plpgsql;

CREATE trigger trigger_noCeroMayor5 BEFORE INSERT ON enrols
FOR EACH ROW EXECUTE PROCEDURE trigger_noCeroMayor5();

/*PUNTO 4.A.II*/
CREATE FUNCTION trigger_cambioEnGrade()
RETURNS trigger as $$
BEGIN 
    IF NEW.grade != OlD.grade THEN
    raise notice 'Nota modificada exitosamente';
    END IF;
	
	IF NEW.grade = OlD.grade THEN
    raise notice 'La nota no ha sido modificada, ya que, es igual a la anterior';
    END IF;
	
	IF NEW.grade <= 0 OR NEW.grade > 5.0  THEN
    raise exception 'La nota para ser modificada debe estar entre el rango de 1.0 y 5.0';
    END IF;

    RETURN NEW;
END;
$$LANGUAGE plpgsql;

CREATE trigger trigger_cambioEnGrade BEFORE INSERT ON enrols
FOR EACH ROW EXECUTE PROCEDURE trigger_cambioEnGrade();


/*Punto 4.B*/

CREATE PROCEDURE create_teaches(instructor_id_new int, course_id_new int) 
 as $$

BEGIN 
IF EXISTS (SELECT FROM course_offering AS co WHERE co.course_id = course_id_new) THEN
  
  INSERT INTO teaches(course_id, sec_id, year, semester, instructor_id)
  
  SELECT co.course_id, co.sec_id, co.year, co.semester, instructor_id_new 
  FROM course_offering AS co
  WHERE co.course_id = course_id_new;
  

  
END IF;
 
END;

$$LANGUAGE plpgsql;


