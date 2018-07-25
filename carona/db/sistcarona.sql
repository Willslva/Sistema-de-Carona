CREATE TABLE usuario (
	id_usuario serial,
	nome varchar(100) NOT NULL,
	nascimento date ,
	genero varchar(10) NOT NULL,
	email varchar(100) NOT NULL,
	telefone varchar(20) NOT NULL,
	senha varchar(30) NOT NULL,
	PRIMARY KEY (id_usuario)
);



CREATE TABLE carona (
	id_carona serial,
	ponto_de_saida varchar(100) NOT NULL,
	ponto_de_chegada varchar(100) NOT NULL,
	data_de_partida  date ,
	data_de_chegada date ,
	lugares integer,
	valor integer ,
	detalhes text,
	motorista integer,
	PRIMARY KEY (id_carona),
	CONSTRAINT motorista_fk
	FOREIGN KEY (motorista) REFERENCES usuario(id_usuario)
);



CREATE TABLE passageiro (
	id_user integer,
	id_carona integer,
	CONSTRAINT user_fk
	FOREIGN KEY (id_user) REFERENCES usuario(id_usuario),
	CONSTRAINT carona_fk
	FOREIGN KEY (id_carona) REFERENCES carona(id_carona)
);
