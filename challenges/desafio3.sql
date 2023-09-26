SELECT u.nome AS pessoa_usuaria, COUNT(r.usuario_id) AS musicas_ouvidas, ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.reproducao AS r
ON u.usuario_id = r.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON r.cancao_id = c.cancao_id
GROUP BY u.nome
ORDER BY u.nome ASC;