CREATE TABLE Estructura (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombre_estructura VARCHAR(50) NOT NULL,
    biomas_ID INT,
    dimension_ID INT,
    FOREIGN KEY (biomas_ID) REFERENCES Bioma(ID),
    FOREIGN KEY (dimension_ID) REFERENCES Dimension(ID)
);

------------------------------------------------------------
-----------------------NUEVO--------------------------------
------------------------------------------------------------



SELECT m.nombre_bioma from Estructura e 
join Bioma m on m.id = e.biomas_ID

---new---
SELECT J.jugador_id ,A.nombre_armadura 
FROM Armadura A
LEFT JOIN Jugador J
ON J.armadura_ID = A.ID
UNION
SELECT J.jugador_id , A.nombre_armadura 
FROM Jugador J
LEFT JOIN Armadura A
ON J.armadura_ID = A.ID



---new---
SELECT 
    A.nombre_armadura AS armadura,
    (SELECT COUNT(*) 
     FROM Jugador J 
     WHERE J.armadura_ID = A.ID) AS cantidad_jugadores
FROM 
    Armadura A;



---new---
SELECT J.jugador_id ,J.nombre_usuario ,A.nombre_armadura ,J.fecha_registro
FROM Armadura A
LEFT JOIN Jugador J
ON J.armadura_ID = A.ID
WHERE J.jugador_id <= 5
ORDER BY J.fecha_registro;

---new---
DELETE FROM Armadura
WHERE ID NOT IN (
    SELECT DISTINCT armadura_ID
    FROM Jugador
    WHERE armadura_ID IS NOT NULL
);
