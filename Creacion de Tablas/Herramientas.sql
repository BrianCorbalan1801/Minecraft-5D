CREATE TABLE Herramientas (
    ID INT PRIMARY KEY,     
    nombre_herramienta VARCHAR(50), 
    como_se_hace VARCHAR(50),     
    crafteo VARBINARY(MAX),      
    FOREIGN KEY (ID) REFERENCES Cubos(ID),  
    FOREIGN KEY (ID) REFERENCES Herramientas_basicas(ID) 
);