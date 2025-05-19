BEGIN TRANSACTION
-- comando
ROLLBACK;

BEGIN TRANSACTION
-- comando
COMMIT;

-- as transactions permitem que tenhamos mais segurança para alterar tabelas, já que com elas é possível reverter atualizações ou confirmá-las, quando estiverem ok
