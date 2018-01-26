CREATE DATABASE WebApiForum

go
USE WebApiForum
go

CREATE TABLE tbUsuarios(
    id int identity primary key,
    nome varchar(50) not null,
    login varchar(50) not null  unique,
    senha varchar(8) not null,
    datacadastro datetime default getDate()
)
go

CREATE TABLE tbTopicos(
    id int identity primary key,
    titulo varchar(30) not null,
    descricao varchar(100) not null,
    datacadastro datetime default getDate()
)
go

CREATE TABLE tbPostagens(
    id int identity primary key,
    idTopico int foreign key references tbTopicos not null,
    idUsuario int foreign key references tbUsuarios not null,
    mensagem varchar(350) not null,
    datapublicacao datetime default getDate()
)

INSERT INTO tbUsuarios (nome,login,senha) 
    VALUES ('Fernando','corujasdev','5454545'),
        ('Edilson','edilson','454545')

INSERT INTO tbTopicos (titulo, descricao)
	VALUES ('Titulo Tópico 1', 'Descrição tópico 1')

INSERT INTO tbPostagens (idTopico, idUsuario, mensagem)
	VALUES (1, 1, 'mensagem lalalalala')

SELECT * FROM tbUsuarios
SELECT * FROM tbTopicos
SELECT * FROM tbPostagens