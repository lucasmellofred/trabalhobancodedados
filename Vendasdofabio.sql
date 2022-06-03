CREATE DATABASE Vendasdofabio

/*Tabela para cadastrar clientes*/
CREATE TABLE Cliente (
idCliente int not null primary key,
nomecliente varchar(50) not null,
CPF varchar(50) not null,
endereco varchar(50) not null,
cidade varchar(35) not null,
estado char(02) not null,
telefone varchar(50) not null,
email varchar(80) not null,
)

/*Tabela para identificar funcionário*/
CREATE TABLE Funcionario (
idFuncionario int not null primary key,
nomefuncionario varchar(50) not null,
)

/*Tabela para cadastrar produtos*/
CREATE TABLE Produto (
idProduto int not null primary key,
nomeproduto varchar(80) not null,
preco MONEY,
)

/*Tabela para realizar vendas*/
CREATE TABLE Vendas (
idVenda int not null primary key,
nomeproduto varchar(80) not null,
idFuncionario int not null,
nomefuncionario varchar(50) not null,
FOREIGN KEY(nomeproduto) REFERENCES Produto (nomeproduto),
FOREIGN KEY(idFuncionario) REFERENCES Funcionario (idFuncionario),
FOREIGN KEY(nomefuncionario) REFERENCES Funcionario (nomefuncionario),
)

/*Tabela para armazenar nota fiscal*/
CREATE TABLE NotaFiscal (
idNotafiscal int not null primary key,
idPedido int not null,
Date date,
FOREIGN KEY(idPedido) REFERENCES Funcionario (nomefuncionario),
)

/*Cadastrando um cliente*/
INSERT INTO Cliente (idCliente,nomecliente,CPF,endereco,cidade,estado,telefone,email)
VALUES (1,'João', '138.234.321-78','Rua Iririú','Joinville','SC','4734643916','joaojoao@hotmail.com')

/*CAdastrando outro cliente*/
INSERT INTO Cliente (idCliente,nomecliente,CPF,endereco,cidade,estado,telefone,email)
VALUES (2,'Maria','023.234.755-56','Rua João Dippe','Joinville','SC','47999123456','mariapessoa@gmail.com')

/*Atualizando endereço de um cliente*/
UPDATE Cliente SET endereco = 'Rua Piratuba' where nome = 'Maria';

/*Visualizar todas as tabelas do banco de dados*/
SELECT * from Cliente
SELECT * from Funcionario
SELECT * from Produto
SELECT * from Vendas
SELECT * from NotaFiscal