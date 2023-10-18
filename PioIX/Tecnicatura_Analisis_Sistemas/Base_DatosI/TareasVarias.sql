Tarea de Contactos:

SELECT nombre, apellido FROM contactos WHERE idempresa=1

UNION

SELECT razonSocial, direccion FROM empresas WHERE ID=1

SELECT COUNT(*) FROM contactos WHERE idempresa=1


SELECT nombre, apellido, razonSocial, direccion
FROM contactos AS C
INNER JOIN empresas ON empresas.id=idempresa;


SELECT nombre, apellido, razonSocial, direccion, COUNT(nombre)
FROM contactos AS C
INNER JOIN empresas ON empresas.id=idempresa
WHERE idempresa=1;



Tarea de Barrio:
