CREATE SCHEMA Soldiers;   #En esta linea creo la base de datos 

#Creacion de Tablas 
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
    Id_Company INT,
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
    Id_Company INT,
    Id_Service INT,
    FOREIGN KEY (Id_Quarters) REFERENCES Quarters(Id_Quarters),
    FOREIGN KEY (Id_Army_Corps) REFERENCES Army_Corps(Id_Army_Corps),
    FOREIGN KEY (Id_Company) REFERENCES Company(Id_Company),
    FOREIGN KEY (Id_Service) REFERENCES Service(Id_Service),
    Admission_Date DATE
);

CREATE TABLE IF NOT EXISTS Service_Effective (
    Id_Service_Effective INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Date_Realization DATE,
    Id_Service INT,
    Id_Soldier INT,
    FOREIGN KEY (Id_Service) REFERENCES Service(Id_Service),
    FOREIGN KEY (Id_Soldier) REFERENCES Soldiers_Quantity(Id_Soldier)
);
