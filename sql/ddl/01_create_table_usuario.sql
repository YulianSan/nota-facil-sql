CREATE TYPE tipo_usuario_type AS ENUM ('aluno', 'professor', 'administrador'); 

CREATE TABLE usuario 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo_usuario tipo_usuario_type NOT NULL
);
