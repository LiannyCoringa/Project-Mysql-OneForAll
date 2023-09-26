SELECT a.nome AS artista, alb.album AS album,  COUNT(s.artista_id) AS pessoas_seguidoras
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS alb
ON a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON s.artista_id = a.artista_id
GROUP BY a.nome, alb.album, s.artista_id
ORDER BY pessoas_seguidoras DESC, a.nome ASC, alb.album ASC;