-- Recuperar todos os clientes
SELECT * FROM Clientes;

-- Recuperar todos os veículos
SELECT * FROM Veiculos;

-- Recuperar veículos de um cliente específico
SELECT * FROM Veiculos WHERE ClienteID = 1;

-- Calcular o total de ordens de serviço por cliente
SELECT VeiculoID, COUNT(*) AS TotalOrdens FROM OrdensDeServico GROUP BY VeiculoID;

-- Ordenar clientes pelo nome
SELECT * FROM Clientes ORDER BY Nome;

-- Recuperar clientes com mais de uma ordem de serviço
SELECT VeiculoID, COUNT(*) AS TotalOrdens FROM OrdensDeServico GROUP BY VeiculoID HAVING COUNT(*) > 1;

-- Recuperar informações detalhadas das ordens de serviço
SELECT 
    OrdensDeServico.OrdemID,
    Clientes.Nome AS Cliente,
    Veiculos.Marca,
    Veiculos.Modelo,
    Servicos.Descricao AS Servico,
    OrdensDeServico.Data,
    OrdensDeServico.Quantidade,
    OrdensDeServico.Total
FROM 
    OrdensDeServico
JOIN 
    Veiculos ON OrdensDeServico.VeiculoID = Veiculos.VeiculoID
JOIN 
    Clientes ON Veiculos.ClienteID = Clientes.ClienteID
JOIN 
    Servicos ON OrdensDeServico.ServicoID = Servicos.ServicoID;
