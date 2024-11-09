-- Criação do Banco de dados para Oficina mecânica
CREATE DATABASE IF NOT EXISTS db_oficina;
USE db_oficina;

-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(15),
    Email VARCHAR(100)
);

-- Criação da tabela Veículos
CREATE TABLE Veiculos (
    VeiculoID INT PRIMARY KEY,
    ClienteID INT,
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Ano INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Criação da tabela Serviços
CREATE TABLE Servicos (
    ServicoID INT PRIMARY KEY,
    Descricao VARCHAR(100),
    Preco DECIMAL(10, 2)
);

-- Criação da tabela Ordens de Serviço
CREATE TABLE OrdensDeServico (
    OrdemID INT PRIMARY KEY,
    VeiculoID INT,
    ServicoID INT,
    Data DATE,
    Quantidade INT,
    Total DECIMAL(10, 2),
    FOREIGN KEY (VeiculoID) REFERENCES Veiculos(VeiculoID),
    FOREIGN KEY (ServicoID) REFERENCES Servicos(ServicoID)
);
