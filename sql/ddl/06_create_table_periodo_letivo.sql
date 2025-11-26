CREATE TABLE periodo_letivo 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ano INT NOT NULL,
    semestre INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL
);

