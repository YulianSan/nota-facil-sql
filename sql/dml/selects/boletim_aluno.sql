SELECT
    a.id AS id_aluno,
    u.nome || ' ' || u.sobrenome AS aluno,
    d.id AS id_disciplina,
    d.nome AS disciplina,
    ROUND(SUM(n.valor * (av.valor::numeric/100)), 2) AS soma_notas,
    ra.minimo_aprovacao,
    CASE 
        WHEN SUM(n.valor * (av.valor::numeric/100)) >= ra.minimo_aprovacao THEN 'APROVADO'
        ELSE 'REPROVADO'
    END AS situacao

FROM nota n
    JOIN aluno a ON a.id = n.id_aluno
    JOIN usuario u ON u.id = a.id_usuario
    JOIN avaliacao av ON av.id = n.id_avaliacao
    JOIN professor_disciplina pd ON pd.id = av.id_professor_disciplina
    JOIN disciplina d ON d.id = pd.id_disciplina
    JOIN regra_avaliacao ra ON ra.id = d.id_regra_avaliacao
GROUP BY 
    a.id, u.nome, u.sobrenome,
    d.id, d.nome,
    ra.minimo_aprovacao

ORDER BY 
    aluno, disciplina;
