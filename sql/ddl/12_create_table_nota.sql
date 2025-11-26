CREATE TABLE nota 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_avaliacao INT,
    id_aluno INT NOT NULL,
    valor INT NOT NULL,
    data_registro DATE NOT NULL,
    observacao TEXT,
    FOREIGN KEY (id_avaliacao) REFERENCES avaliacao (id),
    FOREIGN KEY (id_aluno) REFERENCES aluno (id)
);
