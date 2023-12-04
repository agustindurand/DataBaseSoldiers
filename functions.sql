

-- FUNCION QUE CREA CATEGORIA PARA SOLDADOS SEGUN EL SERVICIO QUE REALICEN -- 

delimiter %
CREATE FUNCTION categoryservice (description varchar(60)) returns varchar (60)
deterministic
begin
     declare result varchar (60);
     if description = "Servicio de reparacion de Equipos" then
      set result = "logistics";
      end if;
	  if description = "Mantenimiento de vehiculos" then
      set result = "logistics car";
      end if;
        if description = "Suministro de Materiales" then
      set result = "provisions";
      end if;
     return result;
end%

-- FUNCION LA CUAL DEVUELVE SI EL SOLDADO SE ENCUENTRA EN CONDICION DE ASCENSO UNICAMENTE CUANDO DE SU FECHA DE GRADUACION A EL 2023 HAYAN PASADO MAS DE CINCO AÑOS Y CUANDO SEA MAYOR DE 25 AÑOS, 
-- DE LO CONTRARIO SE ENCUENTRA EN NO CONDICION DE ASCENSO. --

DELIMITER%

CREATE FUNCTION promotion_condition (date_graduation DATE, age INT) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE time_promotion VARCHAR(100);
    IF (DATEDIFF("2023-01-01", date_graduation) > 1825 AND age > 25) THEN
        SET time_promotion = "in a position to ascend";
    ELSE
        SET time_promotion = "NOT in a position to ascend";
    END IF;
    RETURN time_promotion;
END%




