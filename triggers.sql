


-- Actualizacion de registro de Tabla Expenses_log --

DELIMITER // --Delimitador de comando MySql para inicio del Cuerpo del Trigger--

Create trigger control after update on army_corps_expenses --Creacion de trigger con nombre "control" el cual despues de una MODIFICACION de valores existentes en la tabla "army_corps_expenses"
for each row                                               -- Crea una nueva linea 
insert into expenses_log (fecha, expenseId) values (now(),new.id);   -- Insertando en la tabla "expenses_log" dicha linea, con valores coincidentes de fecha y de expenseId obtenidos de "army_corps_expenses" y crea un nuevo valor (Id)

DELIMITER;





DELIMITER //

CREATE TRIGGER audit_log_soldiers_quantity AFTER INSERT ON soldiers_quantity
FOR EACH ROW
BEGIN
    INSERT INTO soldiers_quantity_audit (fecha, accion, usuario) VALUES (NOW(), 'INSERT', USER());
END;
//

DELIMITER ;







DELIMITER //

CREATE TRIGGER delete_soldiers_company AFTER DELETE ON soldiers_quantity
FOR EACH ROW
BEGIN
    DELETE FROM company WHERE Id_Company = OLD.id_company;
END;
//

DELIMITER ;