SELECT 
    n.id,
    u.nome || ' ' || u.sobrenome AS aluno,
    d.nome AS disciplina,
    av.tipo AS tipo_avaliacao,
    av.descricao AS descricao,
    n.valor AS porcentagem,
    ROUND(n.valor * (av.valor::numeric/100), 2) as nota,
    av.valor as nota_maxima,
    n.data_registro
FROM nota n
    JOIN aluno a ON a.id = n.id_aluno
    JOIN usuario u ON u.id = a.id_usuario
    JOIN avaliacao av ON av.id = n.id_avaliacao
    JOIN professor_disciplina pd ON pd.id = av.id_professor_disciplina
    JOIN disciplina d ON d.id = pd.id_disciplina;
