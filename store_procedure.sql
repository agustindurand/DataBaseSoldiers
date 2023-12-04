DELIMITER //

CREATE PROCEDURE sp_cap_realocattion() 
BEGIN
    IF (SELECT COUNT(*) FROM quarters WHERE id < 15) > 0 THEN
        -- Si hay cuarteles con id < 15, mostrar todos los cuarteles y sus nombres ordenados por id de forma descendente
        SELECT id, nombre, location
        FROM cuarteles
        ORDER BY id DESC;
    ELSE
        -- Si no hay cuarteles con id < 15, mostrar los cuarteles donde location no sea 'desconocido'
        SELECT id, nombre, location
        FROM cuarteles
        WHERE location != 'desconocido';
    END IF;
END //

DELIMITER ;






delimiter //
create procedure sp_base () 
begin 
   select type_corps from army_corps;
   delimiter // 
   


delimiter // 
create procedure activity_of_company (in activity char (100))
begin
   IF activity <> " " THEN
   SET @activity_company = CONCAT( "ORDER BY ", activity);
   ELSE 
   SET @activity_company = " ";
   END IF;
   SET @CLAUSULA = CONCAT ("SELECT * FROM COMPANY" , @activity_company) ;
   PREPARE runSQL from @CLAUSULA;
   Execute RunSQL;
   DEALLOCATE PREPARE RUNSQL;

end 



delimiter //
CREATE PROCEDURE add_soldier (IN id_soldier int, in last_name CHAR (200))
BEGIN
  IF LAST_NAME = " " THEN
   SELECT "Last Name Error";
  ELSE
    insert soldiers_quantity (id, last_name)
    select * from soldiers_quantity order by Id_Soldier desc;
  END IF;
  end //
