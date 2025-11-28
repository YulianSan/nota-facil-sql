SELECT
    d.id,
    d.nome AS disciplina,
    COUNT(DISTINCT ac.id_aluno) AS total_alunos
FROM disciplina d
    JOIN curso c ON c.id = d.id_curso
    JOIN aluno_curso ac ON ac.id_curso = c.id
GROUP BY d.id, d.nome
ORDER BY total_alunos DESC
LIMIT 1;
