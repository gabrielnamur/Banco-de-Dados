CREATE DATABASE lupulo;
USE lupulo;
CREATE TABLE Lupulo (
idLupulo int primary key auto_increment,
tipo varchar(80),
horas_luz_dia int
);

CREATE TABLE Cadastro (
id_cliente int primary key auto_increment,
cnpj char(14),
cpf char(11),
razao_nome varchar(100) NOT NULL,
email varchar(100) NOT NULL,
telefone varchar(50) NOT NULL,
cep char(9),
endereco varchar(80),
UF varchar(2)
);
SELECT * FROM Cadastro;

CREATE TABLE Sensor (
id_sensor int primary key auto_increment,
serial_number int,
status_sensor varchar(10) constraint chkstatus_sensor check(status_sensor IN ('Ativo', 'Inativo'))
);

CREATE TABLE Dados (
id_dados int primary key auto_increment,
dia datetime,
qtd_lumens float
)auto_increment=10000;

ALTER TABLE Lupulo ADD CONSTRAINT chk_horas_luz_dia 
	CHECK (horas_luz_dia >= 0 and horas_luz_dia <=24);
    
INSERT INTO Lupulo values
(null, 'casacade', 16),
(null, 'citra', 15),
(null, 'tropical', 12),
(null, 'dragon', 14),
(null, 'galaxy', 16);

INSERT INTO Lupulo VALUES
	(null, 'amarillo', 15),
    (null, 'mosaic', 14);

SELECT * FROM Lupulo;

INSERT INTO Lupulo values
(null, 'Robson-Enterprises', 12);

DROP TABLE Sensor;




    



