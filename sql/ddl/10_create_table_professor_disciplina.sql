CREATE TABLE professor_disciplina 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_professor INT NOT NULL,
    id_disciplina INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES professor (id),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina (id),
    UNIQUE (id_professor, id_disciplina)
);
