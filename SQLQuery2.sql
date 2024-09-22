SELECT 
Ano,
count (Nome) as qtd


FROM dbo.Filmes 

GROUP BY Ano 
ORDER BY COUNT(Duracao) DESC;


