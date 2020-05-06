/*SET DATESTYLE TO PostgreSQL,European;*/


CREATE SEQUENCE IDVendendor;
CREATE TABLE Vendedores(
    IDVendendor int default nextval('IDVendendor') PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE SEQUENCE IDProduto;
CREATE TABLE Produtos (
    IDProduto INT DEFAULT nextval('IDProduto') PRIMARY KEY,
    Produto VARCHAR(100),
    Preco NUMERIC(10,2)
);

CREATE SEQUENCE IDCliente;
CREATE TABLE Clientes(
    IDCLiente INT DEFAULT nextval('IDCliente') PRIMARY KEY,
    Cliente VARCHAR(50),
    Estado VARCHAR(2),
    Sexo CHAR(1),
    Status VARCHAR(50)
);

CREATE SEQUENCE IDVenda;
CREATE TABLE Vendas(
    IDVenda INT DEFAULT nextval('IDVenda') PRIMARY KEY,
    IDVendendor int REFERENCES Vendedores(IDVendendor),
    IDCliente INT REFERENCES Clientes(IDCliente),
    Data Date,
    Total Numeric(10,2)
);

CREATE table ItensVenda (
    IDProduto INT REFERENCES Produtos ON DELETE RESTRICT,
    IDVenda INT REFERENCES Vendas ON DELETE CASCADE,
    Quantidade INT,
    ValorUnitario decimal(10,2),
    ValorTotal decimal(10,2),
    Desconto DECIMAL(10,2),
    PRIMARY KEY (IDProduto, IDVenda)
);

INSERT INTO clientes(cliente, estado, sexo, status) values('Filip Anselmo', 'AM', 'M', 'Silver');
INSERT INTO clientes(cliente, estado, sexo, status) values('Filip Anselmo', 'AM', 'M', 'Silver');
INSERT INTO clientes(cliente, estado, sexo, status) values('Filip Anselmo', 'AM', 'M', 'Silver');
INSERT INTO clientes(cliente, estado, sexo, status) values('Filip Anselmo', 'AM', 'M', 'Silver');
INSERT INTO clientes(cliente, estado, sexo, status) values('Filip Anselmo', 'AM', 'M', 'Silver');
INSERT INTO clientes(cliente, estado, sexo, status) values('Filip Anselmo', 'AM', 'M', 'Silver');
INSERT INTO clientes(cliente, estado, sexo, status) values('Filip Anselmo', 'AM', 'M', 'Silver');

INSERT INTO vendas(IDVendendor, idcliente, data, total) values(1,1, '01/01/2015', 500);
INSERT INTO vendas(IDVendendor, idcliente, data, total) values(1,1, '01/01/2015', 500);
INSERT INTO vendas(IDVendendor, idcliente, data, total) values(1,1, '01/01/2015', 500);
INSERT INTO vendas(IDVendendor, idcliente, data, total) values(1,1, '01/01/2015', 500);
INSERT INTO vendas(IDVendendor, idcliente, data, total) values(1,1, '01/01/2015', 500);
INSERT INTO vendas(IDVendendor, idcliente, data, total) values(1,1, '01/01/2015', 500);

SELECT * FROM produtos;
