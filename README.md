
Resumen del Proyecto: Base de Datos Militar en MySQL

Este proyecto consiste en el diseño y desarrollo de una base de datos ficticia destinada a gestionar información relacionada con un cuerpo de soldados del ejército. La implementación se realiza utilizando el sistema de gestión de bases de datos MySQL, 
aprovechando sus capacidades y funcionalidades.

Entidades Principales:

Soldado: Cada registro representa a un soldado y contiene información detallada sobre su perfil, como nombre, rango, fecha de ingreso, entre otros.
Compañía: Asocia cada soldado a una unidad específica, permitiendo la organización y manejo eficiente de las tropas.
Cuerpo Armado: Define el cuerpo al que pertenece cada soldado, facilitando la clasificación y administración a nivel más amplio.
Servicio: Registra información sobre el tipo de servicio al que está asignado un soldado, como servicio activo, reserva, o destacamento especial.
Cuartel: Indica la ubicación física de la base militar a la que está asignado cada soldado.


Características y Componentes del Proyecto:

Triggers: Implementados para automatizar acciones en respuesta a eventos específicos, como actualizaciones o inserciones de datos.
Funciones y Procedimientos de Almacenamiento: Optimizan la manipulación y procesamiento de datos mediante la encapsulación de lógica de negocio.
Backups: Se han desarrollado procedimientos para realizar copias de seguridad regulares, asegurando la integridad de los datos.
Vistas: Ofrecen perspectivas personalizadas de los datos para facilitar consultas específicas sin afectar la estructura subyacente.
Subconsultas: Utilizadas para realizar consultas más complejas y obtener información detallada de manera eficiente.

INTRODUCCIÓN
En el marco de este proyecto, nos embarcamos en la creación y diseño de un conjunto de datos ficticios, con el propósito de abordar las consignas planteadas por la comisión encargada de la confección de una base de datos integral y eficaz. Esta iniciativa surge a raíz de la solicitud del Ministerio de Defensa, que busca establecer un sistema que permita gestionar de manera óptima el personal de rango armado dedicado al servicio militar.
El rediseño propuesto se centra en la identificación única de cada soldado a través de su "CÓDIGO DE SOLDADO ÚNICO", complementado por información esencial como nombre, apellido y fecha de graduación. Consideraremos la relevancia de los cuarteles, cada uno caracterizado por su propio código, nombre y ubicación, como parte integral de la identidad del soldado.
Adicionalmente, contemplamos la existencia de diversos Cuerpos del Ejército, tales como Infantería, Artillería, Armada, Marina, Fuerza Aérea y Fuerza Especial. Cada uno de estos cuerpos estará definido por un código específico y una denominación que refleja su naturaleza y función dentro de la estructura militar.
Objetivo del Proyecto:
El objetivo fundamental de este proyecto es diseñar una base de datos eficiente y estructurada que permita al Ministerio de Defensa mantener un control preciso sobre el personal militar. Se busca lograr una gestión integral, desde la identificación única de cada soldado hasta el seguimiento detallado de su asignación a cuarteles, pertenencia a cuerpos del ejército, adscripción a compañías y desempeño de distintos servicios.
A través de la implementación de esta base de datos, se pretende facilitar la planificación, administración y toma de decisiones relacionadas con el personal militar, contribuyendo así a la eficacia y eficiencia de las operaciones del Ministerio de Defensa. Este proyecto no solo aborda las consignas propuestas, sino que también aspira a sentar las bases para un sistema robusto y escalable que pueda adaptarse a futuras necesidades y evoluciones en la gestión militar.


Diagrama de Entidad - Relacion




Listado de tablas con descripción de estructura


Tabla: Soldiers Quantity
La tabla "Soldiers" almacena información relacionada con soldados. Cada soldado está identificado por un código único (Id_Soldier) y tiene campos para el apellido ("Last_name"), el nombre ("First_name"), la fecha de graduación ("Date_Graduation"), la fecha de nacimiento ("Birth_Date"), la edad ("Age"), y la fecha de admisión al cuerpo ("Admission_Date"). Además, hay campos que representan identificadores para la asignación del soldado a diferentes categorías. Estos incluyen el cuartel ("Id_Quarters"), el cuerpo del ejército ("Id_Army_Corps"), la compañía ("Id_Company"), y el servicio ("Id_Service"). Estos campos son clave foránea, lo que significa que se asocian con otras tablas que contienen información detallada sobre los cuarteles, cuerpos del ejército, compañías y servicios,  la tabla "Soldiers" se utiliza para gestionar información esencial sobre los soldados, incluyendo detalles personales, fechas importantes, y su asignación a diferentes categorías militares.
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
SOLDIERS_QUANTITY
Id_Soldier
Unique Soldier Code
x


INT
Last_name
Soldier´s name last




VARCHAR (255)
First_name
Soldier´s first name




VARCHAR (255)
Date_Graduation
Date of graduation




DATE
Birth_Date
Soldier´s birth date




DATE
Age
Years




INT
Id_Quarters
Barraks


x
INT
Id_Army_Corps
Army Corps


x
INT
Id_Company
Company


x
INT
Id_Service
Service


x
INT


Addmision_Date
Admission_Corp




DATE



Tabla: QUARTERS
La tabla "QUARTERS" almacena información relacionada con cuarteles. Cada cuartel tiene un código único ("Id_Quarters") que sirve como clave primaria. Los campos incluyen el nombre del cuartel ("Name_Quarter"), su ubicación ("Location"), y un identificador de la compañía asociada ("Id_Company"), que funciona como clave foránea vinculada a la tabla de compañías.

Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
QUARTERS
Id_Quartes
Quarter code
x


INT
Name Quarter
Name_Field




VARCHAR (255)
Location
Location Quarter




VARCHAR (255)


Id_Company
Company


x
INT


Tabla: Army Corps

La tabla "ARMY CORPS" almacena información relacionada con cuerpos del ejército. Cada cuerpo del ejército tiene un código único ("Id_Army_Corps") que sirve como clave primaria. Los campos incluyen el código del cuerpo del ejército ("Army Corp code"), el tipo de cuerpo ("Type Corps"), la fecha de creación ("CreateDate"), y la ubicación central ("Location Central").

Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
ARMY CORPS
Id_Army_Corps
Army Corp code
x


INT
Type Corps
Type_Name Corp




VARCHAR (255)
CreateDate
Creation Corps




DATE
Location Central
Location




VARCHAR (255)


Tabla: COMPANY
La tabla "COMPANY" almacena información relacionada con compañías militares. Cada compañía tiene un código único ("Id Company") que sirve como clave primaria. Los campos incluyen el código de la compañía ("Company Code"), el código de la subcompañía ("Id_Sub Company"), el nombre de la compañía central ("Name Central Company"), y la actividad de la compañía ("Activity")."COMPANY" se utiliza para gestionar información sobre compañías militares, incluyendo códigos únicos, códigos de las compañías, nombres, y actividades. La clave foránea "Id_Sub Company" establece una relación con otra tabla que puede contener detalles adicionales sobre las subcompañías.
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
COMPANY
Id_Company
Company Code
x


INT
Id_Sub_Company
Subcompany Code


x
INT
Name_Central_Company
Name Company




VARCHAR (255)
Activity
Company Activity




VARCHAR (255)


Tabla: SERVICE
La tabla "SERVICE" almacena información relacionada con los servicios militares. Cada servicio tiene un identificador único ("Id Service") que sirve como clave primaria. Los campos incluyen una descripción del servicio ("Description").

Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
SERVICE
Id_Service
Service
x


INT
Description
Description Service




VARCHAR (255)












Tabla: SERVICE EFFECTIVE
La tabla "SERVICE EFFECTIVE" almacena información sobre la efectividad de los servicios militares. Cada entrada en esta tabla tiene un código único ("Id Service Effective") que sirve como clave primaria. Los campos incluyen la fecha de realización del servicio ("Date Realization"), identificadores para el servicio ("Id Service") y el soldado ("Id Soldier").

Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
SERVICE EFFECTIVE
Id_Service_Effective
Code Service Effective
x


INT
Date Realization
Realization Service




DATE
Id_Service
Service


x
INT
Id_Soldier
Unique Soldier Code


x
INT


Tabla: SUP COMPANY
La tabla "SUB COMPANY" almacena información sobre las sub compañías militares. Cada sub compañía tiene un código único ("Id_Pub Company") que sirve como clave primaria. Los campos incluye identificadores para el cuartel ("Id Quarters"), el cuerpo del ejército ("Id_Army_Corps"), y la ubicación de la sub compañía ("Location Sub Company").

Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
SUB_COMPANY
Id_Sub_Company
Subcompany Code
x


INT
Id_Quarters
Barracks


x
INT
Id_Army_Corps
Army Corps


x
INT
Location Sub_Company
Location




VARCHAR 
(255)


Tabla: ARMY CORP EXPENSES
La tabla "ARMY CORP EXPENSES" almacena información sobre los gastos asociados a los cuerpos del ejército. Cada entrada en esta tabla tiene un identificador único ("Id Army Corp Expenses") que sirve como clave primaria. Los campos incluyen la fecha del gasto ("Date"), el cliente asociado al gasto ("Customer"), el monto del gasto ("Amount"), y un identificador para el cuerpo del ejército relacionado ("Id Army Corps").
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
ARMY CORP EXPENSES
Id
Id_ArmyCorpExpenses
x


INT
Date
Date




DATE
Customer
Customer




VARCHAR (255)
Amount
Amount




INT


Id_Army_Corps
Army Corps


x
INT


Tabla: EXPENSES LOG
La tabla "EXPENSES LOG" registra información detallada sobre los gastos asociados a los cuerpos del ejército en un registro de log. Cada entrada en esta tabla tiene un identificador único ("Id Expenses") que sirve como clave primaria. Los campos incluyen la fecha del registro ("Date"), el monto registrado ("Log Amount"), y un identificador para los gastos del cuerpo del ejército asociados ("Id_Art myCorp Expenses").
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
EXPENSES LOG
Id Expenses
Id Expenses
x




Date
Date






Amount
Log Amount






Id
Id Army Corp Expenses


x




Tabla: MISSIONS
La tabla "MISSIONS" almacena información sobre misiones militares. Cada misión tiene un identificador único ("Id Mission") que sirve como clave primaria. Los campos incluyen la ubicación de la misión ("Location Mission"), la fecha de la misión ("Mission Date"), el estado de la misión ("Status"), y un identificador para el soldado asociado ("Id Soldier").
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type


Id Mission
Mission Id
x


INT


Location
Location Mission




VARCHAR (255)
MISSIONS
Mission Date
Date




DATE


Status
Status of Mission




ENUM


Id_Soldier
Soldier


x
INT


Tabla: STATE
La tabla "STATE" registra el estado de los soldados. Cada estado tiene un identificador único ("Id_State") que sirve como clave primaria. Los campos incluyen un identificador para el soldado asociado ("Id Soldier"), y el estado actual del soldado ("Status").
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
STATE
Id_State
Id
X


INT
Id_Soldier
Soldier


X
INT
Status
Status




VARCHAR (255)


Tabla: SANCTIONS
La tabla "SANCTIONS" registra información sobre sanciones aplicadas a los soldados. Cada canción tiene un identificador único ("Id Sanctions") que sirve como clave primaria. Los campos incluyen un identificador para el soldado asociado ("Id Soldiers"), el monto de las deducciones ("Deductions"), y el número de días suspendidos ("Days Suspended").
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
SANCTIONS
Id Sanctions
Id
x


INT
Id_Soldiers
Soldier Id


x
INT
Deductions
Amount deductions




DECIMAL
Days Suspended
Count Days




INT























Tabla: BENEVOLENCE
La tabla "BENEVOLENCE" registra información sobre beneficios otorgados a los soldados. Cada benevolencia tiene un identificador único ("Id Benevolence") que sirve como clave primaria. Los campos incluyen un identificador para el soldado beneficiario ("Id Soldier"), un identificador para la compañía asociada ("Id Company"), y el nombre del superior que otorga el beneficio ("Superior Granting").
Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
BENEVOLENCE
Id Benevolence
Id
x


INT
Id_Soldier
Soldier


x
INT
Id_Company
Company


x
INT
Superior Granting
Superior Name




VARCHAR (255)












Tabla: CONTACT
La tabla "CONTACT" registra información de contactos asociados a los soldados. Cada contacto tiene un identificador único ("Id_Contact") que sirve como clave primaria. Los campos incluyen un identificador para el soldado asociado ("Id Soldier"), el apellido de la familia ("Family Name"), el número de contacto ("Contact Number"), y la relación con el soldado ("Relationship").

Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
CONTACT
Id_Contact
Id
x


INT
Id_Soldier
Soldier


x
INT
Family Name
Parent Family




VARCHAR (255)
Contact Number
Number Telephone




INT
Relationship
Relationship with Soldier




VARCHAR (255)



Tabla: QUANTITY OF REPORTS
La tabla "QUANTITY OF REPORTS" registra información sobre la cantidad de informes asociados a los soldados. Cada informe tiene un identificador único ("Id Report") que sirve como clave primaria. Los campos incluyen un identificador para el soldado asociado ("Id Soldier"), un identificador para la compañía ("IdCompany"), un identificador para el cuartel ("Id Quarters"), el estado del informe ("Report Status"), y la puntuación asignada ("Score"). "QUANTITY OF REPORTS" se utiliza para registrar información sobre la cantidad de informes asociados a los soldados, incluyendo identificadores únicos para cada informe, soldado, compañía y cuartel, el estado del informe y la puntuación asignada. Las claves foráneas "Id Soldier", "Id Company" e "Id Quarters" establecen relaciones con las tablas de soldados, compañías y cuarteles, respectivamente.

Table
Field
Name_Field
Primary Key
Foreign Key
Data Type
QUANTITY OF REPORTS
Id_Report
Id
x


INT
Id_Soldier
Soldier


x
INT
Id_Company
Company


x
INT
Id_Quarters
Quarter


x
INT
Report_Status
Status




VARCHAR (255)
Score
Number Score




INT











Scripts de creación de objetos de la base de datos

 Creación de Tablas  (Script)
 
   CREATE SCHEMA Soldiers;   #En esta línea creó la base de datos


#Creación de Tablas
CREATE TABLE IF NOT EXISTS Service (
    Id_Service INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Description VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS Army_Corps (
    Id_Army_Corps INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Type_Corps VARCHAR(255),
    Create_Date DATE,
    Location_Central VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS Quarters (
    Id_Quarters INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name_Quarter VARCHAR(255),
    Location VARCHAR(255),
    Id Company INT,
    FOREIGN KEY (Id_Company) REFERENCES Company(Id_Company)
);


CREATE TABLE IF NOT EXISTS Sub_Company (
    Id_Sub_Company INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Id_Quarters INT,
    Id_Army_Corps INT,
    Location VARCHAR(255),
    FOREIGN KEY (Id_Quarters) REFERENCES Quarters(Id_Quarters),
    FOREIGN KEY (Id_Army_Corps) REFERENCES Army_Corps(Id_Army_Corps)
);


CREATE TABLE IF NOT EXISTS Company (
    Id_Company INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Id_Sub_Company INT,
    Name_Central_Company VARCHAR(255),
    Activity VARCHAR(255),
    FOREIGN KEY (Id_Sub_Company) REFERENCES Sub_Company(Id_Sub_Company)
);


CREATE TABLE IF NOT EXISTS Soldiers_Quantity (
    Id_Soldier INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Last_Name VARCHAR(255),
    First_Name VARCHAR(255),
    Date_Graduation DATE,
    Birth_Date DATE,
    Age INT NOT NULL,
    Id_Quarters INT,
    Id_Army_Corps INT,
    Id Company INT,
    Id Service INT,
    FOREIGN KEY (Id_Quarters) REFERENCES Quarters(Id_Quarters),
    FOREIGN KEY (Id_Army_Corps) REFERENCES Army_Corps(Id_Army_Corps),
    FOREIGN KEY (Id_Company) REFERENCES Company(Id_Company),
    FOREIGN KEY (Id_Service) REFERENCES Service(Id_Service),
    Admission_Date DATE
);


CREATE TABLE IF NOT EXISTS Service_Effective (
    Id_Service_Effective INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Date_Realization DATE,
    Id Service INT,
    Id Soldier INT,
    FOREIGN KEY (Id_Service) REFERENCES Service(Id_Service),
    FOREIGN KEY (Id_Soldier) REFERENCES Soldiers_Quantity(Id_Soldier)
);


CREATE TABLE Missions (
   IdMission INT AUTO_INCREMENT PRIMARY KEY,
   Id Soldier INT,
   FOREIGN KEY (Id_Soldier) REFERENCES soldiers_quantity(id_soldier),
   Location Varchar (50),
   Mission_date DATE,
   Status ENUM ("Current", "NoCurrent") NOT NULL
);




CREATE TABLE STATE (
    ID_STATE INT PRIMARY KEY AUTO_INCREMENT,
    Id Soldier INT,
    FOREIGN KEY (Id_Soldier) REFERENCES soldiers_quantity(id_soldier),
    STATUS VARCHAR(50)
);


CREATE TABLE SANCTIONS (
    ID_SANCTIONS INT PRIMARY KEY AUTO_INCREMENT,
    Id Soldier INT,
    FOREIGN KEY (Id_Soldier) REFERENCES soldiers_quantity(id_soldier),
    DEDUCTIONS DECIMAL(10,2),
    DAYS_SUSPENDED INT
);


CREATE TABLE CONTACT (
    ID_CONTACT INT PRIMARY KEY AUTO_INCREMENT,
    Id Soldier INT,
    FOREIGN KEY (Id_Soldier) REFERENCES soldiers_quantity(id_soldier),
    FAMILY_NAME VARCHAR(100),
    CONTACT_NUMBER VARCHAR(15),
    RELATIONSHIP VARCHAR(50)
);


CREATE TABLE BENEVOLENCES (
   ID_BENEVOLENCE INT PRIMARY KEY auto_increment,
    Id Soldier INT,
   FOREIGN KEY (Id_Soldier) REFERENCES soldiers_quantity(id_soldier),
   Id Company INT,
   FOREIGN KEY (Id_company) REFERENCES company(id_company),
    SUPERIOR_GRANTING VARCHAR(100)
);


CREATE TABLE QUANTITY_OF_REPORTS (
   ID_REPORT INT PRIMARY KEY AUTO_INCREMENT,
   Id Soldier INT,
   FOREIGN KEY (Id_Soldier) REFERENCES soldiers_quantity(id_soldier),
   Id Company INT,
   FOREIGN KEY (Id_company) REFERENCES company(id_company),
   Id_quarters INT,
   FOREIGN KEY (Id_Quarters) REFERENCES quarters(id_quarters),
    REPORT_STATUS VARCHAR(50),
    SCORE INT
   
);



Scripts de inserción de datos

Scripts de creación de objetos utilizados e Informes generados en base a los scripts:

Vistas: 

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


CREATE VIEW SoldadosConCuartel AS
SELECT sq.Last_Name, sq.First_Name, q.Name_Quarter AS Cuartel, q.Location AS Ubicacion_Cuartel
FROM Soldiers_Quantity sq
INNER JOIN Quarters q ON sq.Id_Quarters = q.Id_Quarters


CREATE VIEW ServiciosRealizadosPorSoldado AS
SELECT sq.Last_Name, sq.First_Name, s.Description AS Descripcion_Servicio, se.Date_Realization AS Fecha_Realizacion
FROM Soldiers_Quantity sq
INNER JOIN Service_Effective se ON sq.Id_Soldier = se.Id_Soldier
INNER JOIN Service s ON se.Id_Service = s.Id_Service;


CREATE VIEW NUMBER OF CONGRATULATIONS GRANTED BY SUPERIOR AS
SELECT SUPERIOR_GRANTING, COUNT(*) AS COUNT  FROM BENEVOLENCES
GROUP BY SUPERIOR_GRANTING;

SoldiersforCompany:
Objetivo: Proporciona una vista que resume la cantidad de soldados asociados a cada compañía militar.
Operación: Utiliza un LEFT JOIN para incluir todas las compañías, incluso aquellas sin soldados asociados en la tabla soldiers_quantity.

SoldiersInArmyCorps:
Objetivo: Resume la cantidad de soldados en cada cuerpo del ejército.
Operación: Utiliza un LEFT JOIN para incluir todos los cuerpos del ejército, incluso aquellos sin soldados asociados en la tabla soldiers_quantity.

SoldadosConCuartel:
Objetivo: Proporcionar una lista de soldados con información sobre el cuartel al que están asignados.
Operación: Utiliza un INNER JOIN para obtener la información de cuarteles para los soldados en soldiers_quantity.

Servicios Realizados Por Soldado:
Objetivo: Ofrecer detalles sobre los servicios realizados por cada soldado.
Operación: Utiliza INNER JOIN para relacionar soldados quantity con service effective and service.

NUMBER OF CONGRATULATIONS GRANTED BY SUPERIOR:
Objetivo: Contabilizar el número de felicitaciones otorgadas por cada superior.
Operación: Utiliza COUNT y GROUP BY para contar las felicitaciones otorgadas por cada superior en la tabla benevolences.


























 Funciones:

        


-- FUNCIÓN QUE CREA CATEGORIA PARA SOLDADOS SEGÚN EL SERVICIO QUE REALICEN --


delimiter %
CREATE FUNCTION categoryservice (description varchar(60)) returns varchar (60)
deterministic
begin
     declare result varchar (60);
     if description = "Servicio de reparación de Equipos" then
      set result = "logistics";
      end if;
      if description = "Mantenimiento de vehículos" then
      set result = "logistics car";
      end if;
        if description = "Suministro de Materiales" then
      set result = "provisions";
      end if;
     return result;
end%


-- FUNCION LA CUAL DEVUELVE SI EL SOLDADO SE ENCUENTRA EN CONDICIÓN DE ASCENSO ÚNICAMENTE CUANDO DE SU FECHA DE GRADUACIÓN A EL 2023 HAYAN PASADO MÁS DE CINCO AÑOS Y CUANDO SEA MAYOR DE 25 AÑOS,
-- DE LO CONTRARIO SE ENCUENTRA EN NO CONDICIÓN DE ASCENSO. --


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




Función: categoryservice
Objetivo: Esta función asigna una categoría a los soldados según la descripción del servicio que realizan.
Parámetro de Entrada: descripción (cadena de caracteres que describe el servicio).
Tipo de Retorno: VARCHAR(60).
Detalles:
Si la descripción es "Servicio de reparación de Equipos", la categoría es "logistics".
Si la descripción es "Mantenimiento de vehículos", la categoría es "logistics car".
Si la descripción es "Suministro de Materiales", la categoría es "provisions".
Uso Ejemplo: SELECT categoryservice('Servicio de reparación de Equipos'); devolverá 'logistics'.


Función: promotion_condition
Objetivo: Determina si un soldado está en condiciones de ascenso basándose en la fecha de graduación y la edad.
Parámetros de Entrada: date_graduation (fecha de graduación) y age (edad del soldado).
Tipo de Retorno: VARCHAR(100).
Detalles:
Si han pasado más de cinco años desde la fecha de graduación hasta el 2023 y el soldado tiene más de 25 años, la condición es "in a position to ascend".
De lo contrario, la condición es "NOT in a position to ascend".
Uso Ejemplo: SELECT promotion_condition('2017-01-01', 28); devolverá 'in a position to ascend'.


Procedimientos de Almacenamiento (Stored Procedure)


Stored Procedure: sp_cap_realocattion
Objetivo: Este procedimiento almacena un conjunto de instrucciones para manejar la reubicación de cuarteles.
Operaciones:
Verifica si hay cuarteles con id menor a 15.
Si los hay, muestra todos los cuarteles y sus nombres ordenados por id de forma descendente.
Si no los hay, muestra los cuarteles donde la ubicación (location) no sea 'desconocido'.
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






Stored Procedure: sp_base
Objetivo: Este procedimiento simplemente selecciona y muestra el tipo de cuerpos del ejército (type_corps) desde la tabla army_corps.
create procedure sp_base ()
begin
   select type_corps from army_corps;
   delimiter //


Stored Procedure: activity_of_company
Objetivo: Este procedimiento realiza una consulta dinámica a la tabla COMPANY ordenándola por una actividad específica.
Parámetro de Entrada: activity (actividad por la cual se ordenarán las compañías).


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
Stored Procedure: add_soldier
Objetivo: Este procedimiento agrega un nuevo soldado a la tabla soldiers_quantity.
Parámetros de Entrada: id_soldier (identificador del soldado), last_name (apellido del soldado).
Detalles:
Verifica si el apellido (last_name) no es vacío.
Si es vacío, devuelve un mensaje de error.
Si no es vacío, inserta un nuevo soldado en soldiers_quantity con el id_soldier proporcionado.
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
Triggers 


Create trigger control after update on army_corps_expenses
for each row
insert into expenses_log (fecha, expenseId) values (now(),new.id);  

Este trigger se llama control y está asociado a la tabla army_corps_expenses. Se ejecutará después de una operación de actualización (AFTER UPDATE). Cada vez que se actualiza una fila en army_corps_expenses, se registra la fecha actual (NOW()) y el id de la fila actualizada (NEW.id) en la tabla expenses_log. Este trigger está diseñado para llevar un registro de las actualizaciones realizadas en la tabla army_corps_expenses en la tabla expenses_log.
DELIMITER //


CREATE TRIGGER audit_log_soldiers_quantity AFTER INSERT ON soldiers_quantity
FOR EACH ROW
BEGIN
    INSERT INTO soldiers_quantity_audit (fecha, accion, usuario) VALUES (NOW(), 'INSERT', USER());
END;
//
DELIMITER ;
Este trigger se llama audit_log_soldiers_quantity y está asociado a la tabla soldiers_quantity. Se ejecutará después de una operación de inserción (AFTER INSERT). Cada vez que se inserta una nueva fila en soldiers_quantity, se registra la fecha actual (NOW()), la acción ('INSERT'), y el nombre del usuario que realiza la acción (USER()) en la tabla soldiers_quantity_audit. Este trigger está diseñado para auditar las inserciones en la tabla soldiers_quantity, manteniendo un registro de quién y cuándo realiza inserciones en la tabla.


Script de Inserción de Datos

 Se realizó la mayor parte de inserción de datos a tablas desde archivos CSV, se exhibe inserción de datos manual desde consola. 

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



Herramientas utilizadas

Sistema de Control de Versiones Git // Github
Openoffice Calc 
Google Drive
Hoja de Cálculo Google
Workbench MySql
Virtual Studio Code
Draw.io (Diagrama)


Futuras Líneas

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


  Se podría crear una vista a fines de obtener el número de reportes asociado a cada soldado como así un promedio de puntuación de cada soldado por cada reporte realizado a ese mismo efectivo. 