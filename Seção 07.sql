
/* FILTRANDO VALORES NULOS */
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE sexo = 'F';

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL = NULL;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;
/* IS OU IS NOT NULL */

/*Clausula update*/

select * from funcionarios WHERE (nome = "Wood" and email="kwoodrm@indiegogo.com");

update funcionarios set nome = "Tiago" WHERE (nome = "Wood" and email="kwoodrm@indiegogo.com");

delete from funcionarios where (nome = "Wood" and email="kwoodrm@indiegogo.com");