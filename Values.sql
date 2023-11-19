INSERT INTO Service (Description) VALUES
('Servicio de Reparación de Equipos'),
('Mantenimiento de Vehículos'),
('Suministro de Materiales');

INSERT INTO Army_Corps (Type_Corps, Create_Date, Location_Central) VALUES
('Infantería', '2022-06-15', 'Central A'),
('Artillería', '2022-03-20', 'Central B'),
('Caballería', '2022-08-10', 'Central C');

INSERT INTO Sub_Company (Id_Quarters, Id_Army_Corps, Location) VALUES
(1, 2, 'Ubicación X'),
(2, 3, 'Ubicación Y'),
(3, 1, 'Ubicación Z');

INSERT INTO Company (Id_Sub_Company, Name_Central_Company, Activity) VALUES
(1, 'Empresa A', 'Actividad 1'),
(2, 'Empresa B', 'Actividad 2'),
(3, 'Empresa C', 'Actividad 3');

INSERT INTO Quarters (Name_Quarter, Location, Id_Company) VALUES
('Cuartel Alpha', 'Ubicación A', 1),
('Cuartel Beta', 'Ubicación B', 2),
('Cuartel Gamma', 'Ubicación C', 3);

INSERT INTO Soldiers_Quantity (Last_Name, First_Name, Date_Graduation, Birth_Date, Age, Id_Quarters, Id_Army_Corps, Id_Company, Id_Service, Admission_Date) VALUES
('Pérez', 'Juan', '2000-05-20', '1998-03-10', 25, 1, 2, 1, 2, '2021-01-15'),
('García', 'María', '1999-11-12', '1997-07-05', 24, 2, 3, 2, 1, '2020-09-20'),
('Martínez', 'Luis', '2002-02-28', '2000-12-18', 21, 3, 1, 3, 3, '2022-03-10');

INSERT INTO Service_Effective (Date_Realization, Id_Service, Id_Soldier) VALUES
('2023-01-05', 1, 1),
('2023-04-10', 2, 2),
('2023-07-15', 3, 3);