create table if not exists cliente  (
	idcliente int not null,
	nome varchar(50)not null,
	cpf char(11) not null,
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,

	constraint pk_cln_idcliente primary key (idcliente)
);

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
values (1, 'Emanuel', '88828383821', '323232', '2001-01-30', 'M', 'Estudante', 'Brasileiro', 'Rua joaquim nabuco', '23', 'cidade nova', 'porto uniao', 'sc', 'nenhuma');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (2, 'Amanda', '99938484812', '454545', '1990-05-15', 'F', 'Engenheira', 'Brasileira', 'Av. Paulista', '100', 'Apto 32', 'São Paulo', 'SP', 'Cliente VIP');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (3, 'Carlos', '77727272730', '565656', '1985-11-20', 'M', 'Médico', 'Brasileiro', 'Rua das Flores', '50', 'Casa 5', 'Curitiba', 'PR', 'Consulta frequente');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (4, 'Beatriz', '66636363619', '676767', '1992-03-05', 'F', 'Advogada', 'Brasileira', 'Rua XV de Novembro', '200', 'Sala 12', 'Florianópolis', 'SC', 'Sem observações');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (5, 'Daniel', '55545454528', '787878', '1978-07-22', 'M', 'Professor', 'Brasileiro', 'Av. das Nações', '300', 'Bloco B', 'Rio de Janeiro', 'RJ', 'Prefere contato por e-mail');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (6, 'Fernanda', '44454545437', '898989', '1983-09-14', 'F', 'Arquiteta', 'Brasileira', 'Rua da Paz', '400', 'Cobertura', 'Belo Horizonte', 'MG', 'Cliente fiel');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (7, 'Gustavo', '33365656546', '909090', '1995-12-10', 'M', 'Designer', 'Brasileiro', 'Av. Brasil', '123', 'Apto 45', 'Porto Alegre', 'RS', 'Gosta de descontos');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (8, 'Helena', '22276767655', '101010', '2000-06-18', 'F', 'Estudante', 'Brasileira', 'Rua das Palmeiras', '78', 'Casa', 'Salvador', 'BA', 'Prefere contato telefônico');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (9, 'Igor', '11187878764', '111111', '1988-08-30', 'M', 'Administrador', 'Brasileiro', 'Av. Independência', '56', 'Sala 23', 'Fortaleza', 'CE', 'Consulta anual');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (10, 'Juliana', '00098989873', '121212', '1991-04-25', 'F', 'Enfermeira', 'Brasileira', 'Rua da Praia', '89', 'Apto 67', 'Recife', 'PE', 'Cliente regular');

INSERT INTO cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, municipio, uf, observacoes)
VALUES (11, 'Lucas', '12345678900', '131313', '1993-02-12', 'M', 'Analista de Sistemas', 'Brasileiro', 'Av. Central', '101', 'Bloco C', 'Manaus', 'AM', 'Prefere comunicação via WhatsApp');

-- Exercicios --

select * from cliente;

select 'CPF: ' || cpf || 'RG: ' || rg as "rg e cpf" from cliente;

select nome, genero, profissao from cliente order by nome;

select * from cliente where nome like '%r%';

select * from cliente where nome like 'C%';

select * from cliente where nome like '%a';

select * from cliente where genero = 'F';

-- Criando mais tabelas --

create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,
	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheira');
insert into profissao (idprofissao, nome) values (3, 'Médico'); 
insert into profissao (idprofissao, nome) values (4, 'Advogada');
insert into profissao (idprofissao, nome) values (5, 'Professor');
insert into profissao (idprofissao, nome) values (6, 'Arquiteta'); 
insert into profissao (idprofissao, nome) values (7, 'Designer');   
insert into profissao (idprofissao, nome) values (8, 'Administrador'); 
insert into profissao (idprofissao, nome) values (9, 'Enfermeira');
insert into profissao (idprofissao, nome) values (10, 'Analista de Sistemas');

select * from profissao;

create table nacionalidade(
	idnacionalidade integer not null,
	nome varchar(30) not null,
	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Noter-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;

create table complemento (
	idcomplemento integer not null,
	nome varchar(30) not null,
	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cp_nome unique (nome)
);

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento;

create table bairro (
	idbairro integer not null,
	nome varchar(30) not null,
	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique(nome)
);

insert into bairro(idbairro, nome) values (1, 'Cidade Nova');
insert into bairro(idbairro, nome) values (2, 'Centro');
insert into bairro(idbairro, nome) values (3, 'São Pedro');
insert into bairro(idbairro, nome) values (4, 'Santa Rosa');

select * from bairro;

-- alterando table cliente para receber foreign key --
alter table cliente rename column profissao to idprofissao;
alter table cliente drop column idprofissao;
alter table cliente add idprofissao integer;
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao(idprofissao);

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4,5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13)

select * from cliente;
