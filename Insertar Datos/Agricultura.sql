INSERT INTO Agricultura (nombre_semilla, tiempo_de_crecimiento, Loot, Interaccion)
    VALUES ("Semillas de trigo", "3 dias", "trigo", TRUE),
    ("Semillas de sandía", "3 dias", "sandía", TRUE),
    ("Semillas de calabaza", "4 dias", "calabaza", TRUE),
    ("Semillas de remolacha", "2 dias", "remolacha", TRUE),
    ("Semillas de cacao", "2 dias", "cacao", TRUE),
    ("Verruga del Nether", "4 dias", "verrugas", TRUE );

-----------------------------------------------------------------
-------------------------NUEVO-----------------------------------
-----------------------------------------------------------------

INSERT INTO Agricultura (nombre_semilla, tiempo_de_crecimiento, Loot, Interaccion)
    VALUES ("Semillas de manzana", "10 dias", "manzana", TRUE);


UPDATE Agricultura
SET tiempo_de_crecimiento = "30 dias", Loot = "manzana dorada"
WHERE nombre_semilla = "Semillas de manzana";


DELETE FROM Agricultura
WHERE nombre_semilla = "Semillas de manzana";
