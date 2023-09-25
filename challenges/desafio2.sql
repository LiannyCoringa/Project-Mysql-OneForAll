SELECT
    (SELECT COUNT(cancao_id) FROM SpotifyClone.cancao) AS cancoes,
    (SELECT COUNT(artista_id) FROM SpotifyClone.artistas) AS artistas,
    (SELECT COUNT(album_id) FROM SpotifyClone.albuns) AS albuns;