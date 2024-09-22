SELECT 
	f.Nome,
	g.Genero,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM dbo.Filmes AS f
	-- fg � um alias da FilmesGenero, o f da Filmes. 
	-- Preciso ligar a chave estrangeira a primaria, e � o seguinte:
	-- IdFilme � chave estrangeira da tabela fg, e Id � chave primaria da tabela Filmes.
	-- O join Puxa os valores que s�o comuns entre duas tabelas, se tem registro, ent�o, ele retorna. 
	INNER JOIN dbo.FilmesGenero AS fg ON fg.IdFilme = f.Id
	-- Aqui �  a mesma coisa. estou chamando a tabela generos e comparando se o 
	-- Id da tabela Generos � igual o IdGenero da tabela FilmesGenero
	INNER JOIN dbo.Generos AS g ON g.Id = fg.IdGenero
	INNER JOIN dbo.ElencoFilme AS ef ON ef.IdFilme = fg.IdFilme
	INNER JOIN dbo.Atores AS a ON a.Id = ef.IdAtor

