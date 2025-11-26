CREATE TYPE tipo_avaliacao_type AS ENUM ('prova', 'trabalho', 'atividade');

CREATE TABLE avaliacao 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_professor_disciplina INT,
    tipo tipo_avaliacao_type NOT NULL,
    data_entrega DATE NOT NULL,
    descricao TEXT NOT NULL,
    valor INT NOT NULL,
    FOREIGN KEY (id_professor_disciplina)
        REFERENCES professor_disciplina (id)
);
