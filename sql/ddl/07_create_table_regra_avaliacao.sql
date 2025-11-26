CREATE TABLE regra_avaliacao 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao TEXT NOT NULL,
    minimo_aprovacao INT NOT NULL
);
