CREATE TABLE professor 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id)
);
