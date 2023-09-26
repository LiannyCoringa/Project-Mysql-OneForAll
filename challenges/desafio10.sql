CREATE TABLE SpotifyClone.favoritos(
	cancao_id INT NOT NULL,
    usuario_id INT NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(cancao_id, usuario_id, album_id),
    FOREIGN KEY (cancao_id) REFERENCES cancao (cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) ENGINE = InnoDB;
INSERT INTO SpotifyClone.favoritos(cancao_id, usuario_id, album_id)
VALUES (3, 1, 1),
(6, 1, 4),
(10, 1, 8),
(4, 2, 2),
(1, 3, 1),
(3, 3, 1),
(7, 4, 5),
(4, 4, 2),
(10, 5, 8),
(2, 5, 1),
(4, 8, 2),
(7, 9, 5),
(3, 10, 1);
