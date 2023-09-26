SELECT alb.album AS album, COUNT(fav.cancao_id) AS favoritadas
FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.favoritos AS fav
ON alb.album_id = fav.album_id
GROUP BY alb.album
ORDER BY favoritadas DESC, alb.album
LIMIT 3;