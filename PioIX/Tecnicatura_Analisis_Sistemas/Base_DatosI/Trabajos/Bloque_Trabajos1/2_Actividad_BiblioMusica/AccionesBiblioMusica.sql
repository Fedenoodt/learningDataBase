
Consultas de la base de datos "Musica":

SELECT * FROM `musica` WHERE `M`.`autor` <> 'Jesee Uribe' AND `M`.`autor` <> 'Soda Estereo' AND `M`.`autor` <> 'Los Pericos';

SELECT * FROM MUSICA.musica
ORDER BY precio ASC;

SELECT * FROM MUSICA.musica
ORDER BY precio ASC
LIMIT 1;

SELECT COUNT(id)
FROM musica;

SELECT * FROM MUSICA.musica
WHERE `autor`='Def Leppard';


Consultas de la base de datos "Biblioteca":

INSERT INTO `categorias`(`nombre`)
VALUES('ciencia_ficcion'), ('suspenso'), ('biologia');

INSERT INTO `libros`(`nombre`, `paginas`, `categoria_id`)
VALUES('Star_Wars_Linaje', 408, 3), ('Veinte_pisos_de_terror', 62, 4), ('Atlas_visual_nuestro_cuerpo', 64, 5);

DELETE FROM `libros`
WHERE libros.nombre='el principito';

UPDATE `libros`
SET `paginas`=65
WHERE id=4;
