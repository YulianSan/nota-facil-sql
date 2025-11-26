CREATE TABLE aluno 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    matricula VARCHAR NOT NULL UNIQUE,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id)
);
