
  START TRANSACTION;

DELETE FROM company WHERE activity = 'actividad 3';

-- verificación adicional antes de hacer el commit
IF EXISTS (SELECT * FROM company WHERE activity = 'actividad 2') THEN
    COMMIT;
ELSE
    ROLLBACK;
END IF;

SELECT * FROM company;




-- transacción inicio (2)
START TRANSACTION;
INSERT INTO service (id_service, description) VALUES
(4, 'Flota'),
(5, 'Investigacion academica'),
(6, 'preparacion academica'),
(7, 'estadistica'),
(8, 'protocolo'),
(9, 'informatica'),
(10, 'enlace'),
(11, 'distribucion geografica');

SAVEPOINT savepoint_after_4th_insert;
SAVEPOINT savepoint_after_8th_insert; 4
-- Comentario: Eliminación del savepoint creado después del 4to registro
RELEASE SAVEPOINT savepoint_after_4th_insert;

COMMIT;