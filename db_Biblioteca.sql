-- Exibe os bancos de dados disponíveis
SHOW DATABASES;

-- Apaga o banco de dados do servidor
-- DROP DATABSE IF EXISTS db_Biblioteca;

-- Cria um novo banco de dados, caso ele não exista
CREATE DATABASE IF NOT EXISTS db_Biblioteca;

-- Seleciona o banco de dados que vamos utilizar para criar tabelas
USE db_Biblioteca;

-- Exibe o banco de dados selecionado
SELECT DATABASE(); 

-- Cria uma tabela com seus campos
CREATE TABLE IF NOT EXISTS tbl_Livro (
	ID_Livro SMALLINT AUTO_INCREMENT PRIMARY KEY,
	Nome_Livro VARCHAR(50) NOT NULL,
    ISBN_Livro VARCHAR(30) NOT NULL,
    ID_AUTOR SMALLINT NOT NULL,
    Data_Pub DATE NOT NULL,
    Preco_Livro DECIMAL NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_Autores (
	ID_Autor SMALLINT PRIMARY KEY,
    Nome_autor VARCHAR(50),
    Sobrenome_autor VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS tbl_Editoras (
	ID_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Nome_Editora VARCHAR(50) NOT NULL
);