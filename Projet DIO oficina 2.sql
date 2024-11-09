-- Inserção de dados na tabela Clientes
INSERT INTO Clientes (ClienteID, Nome, Telefone, Email) VALUES
(1, 'João Silva', '123456789', 'joao@example.com'),
(2, 'Maria Oliveira', '987654321', 'maria@example.com');

-- Inserção de dados na tabela Veículos
INSERT INTO Veiculos (VeiculoID, ClienteID, Marca, Modelo, Ano) VALUES
(1, 1, 'Toyota', 'Corolla', 2020),
(2, 2, 'Honda', 'Civic', 2019);

-- Inserção de dados na tabela Serviços
INSERT INTO Servicos (ServicoID, Descricao, Preco) VALUES
(1, 'Troca de Óleo', 100.00),
(2, 'Alinhamento', 150.00);

-- Inserção de dados na tabela Ordens de Serviço
INSERT INTO OrdensDeServico (OrdemID, VeiculoID, ServicoID, Data, Quantidade, Total) VALUES
(3, 1, 3, '2024-07-08', 1, 100.00),
(4, 2, 4, '2024-05-11', 1, 150.00);

INSERT INTO Clientes (ClienteID, Nome, Telefone, Email) VALUES
(3, 'João Pedro', '123456789', 'joao@example.com'),
(4, 'Maria Aparecida', '987654321', 'maria@example.com');

INSERT INTO Servicos (ServicoID, Descricao, Preco) VALUES
(3, 'Troca de filtro', 100.00),
(4, 'Troca da pastilha de freio', 150.00);

INSERT INTO Veiculos (VeiculoID, ClienteID, Marca, Modelo, Ano) VALUES
(3, 1, 'VolksWagen', 'T-Cross', 2024),
(4, 2, 'Honda', 'FIT', 2023);