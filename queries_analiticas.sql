	--Receita total
	SELECT SUM(preco_unitario * quantidade) AS receita_total FROM vendas;

	--total de vendas por categoria
	SELECT categoria, SUM(quantidade) AS total_vendas
	FROM vendas
	GROUP BY categoria;

	--Receita por canal de venda
	SELECT canal_venda, SUM(preco_unitario * quantidade) AS receita
	FROM vendas
	GROUP BY canal_venda;

	--Produtos mais vendidos LIMIT não é utilizado 
	SELECT TOP 10 produto, SUM(quantidade) AS total_vendas
	FROM vendas
	GROUP BY produto
	ORDER BY total_vendas DESC;
	
	--Receita diaria
	SELECT data_venda, SUM(preco_unitario * quantidade) AS receita_diaria
	FROM vendas
	GROUP BY data_venda
	ORDER BY data_venda;


	TDISK = 'c:\SQL2022\ecommerce_backup.bak'
	WITH INIT, STATS = 10;

	--Criando Backup do banco
	CREATE DATABASE [Backup_ecommerce]

SELECT name, recovery_model_desc 
FROM sys.databases 
WHERE name = 'ecommerce'


--ESTATISTICAS DESCRITIVAS
-- Total de vendas (registros)
SELECT COUNT(*) AS total_vendas FROM vendas;

-- Receita total
SELECT SUM(preco_unitario * quantidade) AS receita_total FROM vendas;

-- Média de vendas por dia
SELECT AVG(quantidade) AS media_vendas_diaria FROM vendas;

-- Produto mais vendido
SELECT TOP 1 produto, SUM(quantidade) AS total
FROM vendas
GROUP BY produto
ORDER BY total DESC;

-- Produto que gerou mais receita
SELECT TOP 1 produto, SUM(preco_unitario * quantidade) AS receita
FROM vendas
GROUP BY produto
ORDER BY receita DESC;

--PADRÕES POR CATEGORIA / CANAL / TEMPO

-- Receita por categoria
SELECT categoria, SUM(preco_unitario * quantidade) AS receita
FROM vendas
GROUP BY categoria
ORDER BY receita DESC;

-- Receita por canal
SELECT canal_venda, SUM(preco_unitario * quantidade) AS receita
FROM vendas
GROUP BY canal_venda;

-- Receita por dia
SELECT data_venda, SUM(preco_unitario * quantidade) AS receita
FROM vendas
GROUP BY data_venda
ORDER BY data_venda;

-- Quantidade total por categoria
SELECT categoria, SUM(quantidade) AS total_vendido
FROM vendas
GROUP BY categoria;

