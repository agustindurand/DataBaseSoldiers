CREATE VIEW SoldiersforCompany AS 
SELECT c.name_central_company AS NameCompany, COUNT(s.id_soldier) AS NumberSoldiersQuantity
FROM company c
LEFT JOIN soldiers_quantity s ON c.id_company = s.id_company
GROUP BY c.name_central_company;

CREATE VIEW SoldiersInArmyCorps AS
SELECT ca.type_corps AS AC , COUNT(s.id_soldier) AS QS
FROM army_corps ca
LEFT JOIN soldiers_quantity s ON ca.Id_Army_Corps = s.Id_Army_Corps
GROUP BY ca.Type_Corps;

CREATE VIEW InformacionSoldiers AS <-- Vista no incorporada debido a que debo modificar claves foraneas en las tablas -->
SELECT so.First_Name AS NameSoldier, so.Birth_Date, c.Name_Central_Company AS NameCompania, s.description
FROM soldiers_quantity so
LEFT JOIN service s ON so.Id_Soldier = s.id_soldier
LEFT JOIN company c ON s.id_company = c.id_company;

CREATE VIEW SoldadosConCuartel AS
SELECT sq.Last_Name, sq.First_Name, q.Name_Quarter AS Cuartel, q.Location AS Ubicacion_Cuartel
FROM Soldiers_Quantity sq
INNER JOIN Quarters q ON sq.Id_Quarters = q.Id_Quarters

CREATE VIEW ServiciosRealizadosPorSoldado AS
SELECT sq.Last_Name, sq.First_Name, s.Description AS Descripcion_Servicio, se.Date_Realization AS Fecha_Realizacion
FROM Soldiers_Quantity sq
INNER JOIN Service_Effective se ON sq.Id_Soldier = se.Id_Soldier
INNER JOIN Service s ON se.Id_Service = s.Id_Service;

CREATE VIEW NUMBEROFCONGRATULATIONSGRANTEDBYSUPERIOR AS 
SELECT SUPERIOR_GRANTING, COUNT(*) AS COUNT  FROM BENEVOLENCES
GROUP BY SUPERIOR_GRANTING;


CREATE VIEW vista reportes soldado AS
SELECT
    s.id_soldier,
    COUNT(qr.id_report) AS cantidad_reportes,
    AVG(qr.score) AS promedio_score
FROM
    soldiers s
LEFT JOIN
    quantity_of_reports qr ON s.id_soldier = qr.id_soldier
GROUP BY
    s.id_soldier;
