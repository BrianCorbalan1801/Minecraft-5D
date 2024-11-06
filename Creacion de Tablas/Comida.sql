CREATE TABLE Comida(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  nombre_comida VARCHAR(50) NOT NULL,
  efecto VARCHAR(50) NOT NULL,
  recuperar_hambre DECIMAL NOT NULL,
  recuperar_vida DECIMAL NOT NULL,
  receta VARCHAR(50) NOT NULL,
  items_ID INT,
  FOREIGN KEY (items_ID) REFERENCES items(ID)
);