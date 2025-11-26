CREATE TABLE aluno_curso 
( 
    id_curso INT,
    id_aluno INT,
    PRIMARY KEY (id_curso, id_aluno),
    FOREIGN KEY (id_curso) REFERENCES curso (id),
    FOREIGN KEY (id_aluno) REFERENCES aluno (id)
);
