SELECT u.nome AS pessoa_usuaria, IF(YEAR(MAX(r.data_reproducao)) >= '2021', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.reproducao AS r
ON u.usuario_id = r.usuario_id
GROUP BY u.nome
ORDER BY u.nome;