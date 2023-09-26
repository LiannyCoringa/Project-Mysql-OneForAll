SELECT c.nome AS cancao, COUNT(r.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.reproducao AS r
ON c.cancao_id = r.cancao_id
GROUP BY c.nome
ORDER BY reproducoes DESC, c.nome ASC
LIMIT 2;