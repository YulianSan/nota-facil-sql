CREATE TYPE nivel_type AS ENUM (
    'tecnologo',
    'bacharelado',
    'licenciatura',
    'pos_graduacao',
    'mestrado',
    'doutorado'
);

CREATE TABLE curso 
( 
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR,
    carga_horaria INT NOT NULL,
    descricao VARCHAR NOT NULL,
    nivel nivel_type NOT NULL
);
