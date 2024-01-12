DELIMITER //

Create trigger control after update on army_corps_expenses
for each row
insert into expenses_log (fecha, expenseId) values (now(),new.id);   

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