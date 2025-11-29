# 📘 Sistema Acadêmico — Banco de Dados Relacional

Este projeto implementa o banco de dados de um sistema acadêmico completo, incluindo gerenciamento de alunos, professores, cursos, disciplinas, avaliações e notas.  
A modelagem segue boas práticas de Banco de Dados Relacional, utilizando **chaves primárias**, **chaves estrangeiras**, **tabelas de ligação (N:N)** e **regras de integridade**.

---

## 🧩 Modelagem

Os arquivos na pasta `docs/` apresentam:

- **modelo_conceitual.png**
- **modelo_logico.png**

Eles representam graficamente toda a estrutura e relacionamentos do projeto.

---

## 📑 Estrutura dos Scripts SQL

### 📂 DDL  
Contém todos os arquivos responsáveis pela criação das tabelas e constraints.

### 📂 DML  

- `inserts/` — dados de teste do sistema  
- `updates/` — exemplos de atualizações de dados  
- `deletes/` — remoções de registros  
- `selects/` — consultas

### 📄 main.sql  
Responsável por executar **todas as criações de tabelas** (DDL).

### 📄 insert.sql  
Executa **todos os inserts** na ordem correta.

---

# 🚀 Instruções de Execução (sem Docker)

## 1️⃣ Criando o Banco de Dados

No terminal, execute o seguinte comando

## 2️⃣ Executar o main.sql (Criação das Tabelas)

```bash
psql -U seu_usuario -d nome_do_banco -f main.sql
```

## 3️⃣ Executar o insert.sql (Inserção de Dados)

```bash
psql -U seu_usuario -d nome_do_banco -f insert.sql
```

## 4️⃣ Executar as Queries

```bash
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/selects/boletim_aluno.sql
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/selects/notas_avaliacoes_aluno.sql
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/selects/curso_com_mais_alunos.sql
```

## 5️⃣ Executar as Atualizações
```bash
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/updates/01_update_valor_nota.sql
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/updates/02_update_descricao_curso.sql
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/updates/03_update_descricao_avaliacao.sql
```

## 6️⃣ Executar as Remoções
```bash
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/deletes/01_delete_nota.sql
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/deletes/02_delete_avaliacao_sem_notas.sql
psql -U seu_usuario -d nome_do_banco -f ./sql/dml/deletes/03_delete_avaliacao.sql
```

---
