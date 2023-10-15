--01
SELECT
Nome,Ano 
FROM Filmes

--02
SELECT 
Nome,Ano 
FROM Filmes
ORDER BY Ano 

--03
SELECT
* 
FROM Filmes 
WHERE NOME = 'De volta para o futuro'

--04
SELECT
*
FROM Filmes
WHERE ANO = 1997

--05
SELECT
*
FROM Filmes
WHERE Ano > 2000

--06
SELECT
*
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao 

--07
SELECT
Ano,
COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade desc

--08
SELECT
PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

--09
SELECT
PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
M.Nome,
G.Genero
FROM Filmes M
INNER JOIN FilmesGenero F ON F.IdFilme = M.Id
INNER JOIN Generos G ON G.ID = F.IdGenero

--11
SELECT
M.Nome,
G.Genero
FROM Filmes M
INNER JOIN FilmesGenero F ON F.IdFilme = M.Id
INNER JOIN Generos G ON G.ID = F.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT
F.Nome,
a.PrimeiroNome,
a.UltimoNome
FROM Filmes F
INNER JOIN ElencoFilme E ON E.IdFilme = F.Id
INNER JOIN Atores A on a.Id = e.IdAtor