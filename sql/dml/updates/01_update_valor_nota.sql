UPDATE nota SET valor = 85 WHERE id_avaliacao IN (
    SELECT a.id FROM avaliacao as a 
        JOIN professor_disciplina as pd ON a.id_professor_disciplina = pd.id
        WHERE pd.id_disciplina = 3
);
