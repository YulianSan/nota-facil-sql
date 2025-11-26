CREATE TABLE disciplina 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    carga_horaria INT NOT NULL,
    descricao TEXT NOT NULL,
    id_periodo_letivo INT,
    id_regra_avaliacao INT,
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES curso (id),
    FOREIGN KEY (id_periodo_letivo) REFERENCES periodo_letivo (id),
    FOREIGN KEY (id_regra_avaliacao) REFERENCES regra_avaliacao (id)
);
