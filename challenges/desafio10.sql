CREATE TABLE SpotifyClone.favoritos(
	cancao_id INT NOT NULL,
    usuario_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(cancao_id, usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancao (cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
) ENGINE = InnoDB;
INSERT INTO SpotifyClone.favoritos(cancao_id, usuario_id)
VALUES (3, 1),
(6, 1),
(10, 1),
(4, 2),
(1, 3),
(3, 3),
(7, 4),
(4, 4),
(10, 5),
(2, 5),
(4, 8),
(7, 9),
(3, 10);
