-- 1
SELECT
	Nome, 
	Ano
FROM Filmes

-- 2
SELECT
	Nome, 
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano Asc

-- 3
SELECT 
	Nome, 
	Ano, 
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao Asc

-- 7

SELECT 
	Ano, 
	count(*) qntd
FROM Filmes
GROUP BY Ano
ORDER BY qntd Desc


-- 8
SELECT 
	PrimeiroNome, 
	UltimoNome, 
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9

SELECT 
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10

SELECT 
	Nome, 
	Genero
FROM Filmes

inner join FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
inner join Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11

SELECT 
	Nome, 
	Genero
FROM Filmes

inner join FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
inner join Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério';

-- 12

SELECT 
	Nome, 
	PrimeiroNome, 
	UltimoNome, Papel
FROM Atores

inner join ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
inner join Filmes ON Atores.Id = Filmes.Id
