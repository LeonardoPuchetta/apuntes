-- Sakila Sample Database Schema
-- Version 0.9

-- Copyright (c) 2006, 2014, Oracle Corporation
-- All rights reserved.

-- Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

--  * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
--  * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
--  * Neither the name of MySQL AB nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

-- EDITS -- EDITS 
-- Edits made by Mel Restori for purposes of translating table names and field names into Spanish and simplifying the db
-- All original credit for database remains with Oracle Corporation


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS sakila;
CREATE SCHEMA sakila;
USE sakila;

--
-- Table structure for table `actor`
--

CREATE TABLE actor (
  actor_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (actor_id),
  KEY idx_actor_apellido (apellido)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `direccion`
--

CREATE TABLE direccion (
  direccion_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  direccion VARCHAR(50) NOT NULL,
  direccion2 VARCHAR(50) DEFAULT NULL,
  distrito VARCHAR(20) NOT NULL,
  ciudad_id SMALLINT UNSIGNED NOT NULL,
  codigo_postal VARCHAR(10) DEFAULT NULL,
  telefono VARCHAR(20) NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (direccion_id),
  KEY idx_fk_ciudad_id (ciudad_id),
  CONSTRAINT `fk_direccion_ciudad` FOREIGN KEY (ciudad_id) REFERENCES ciudad (ciudad_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `categoria`
--

CREATE TABLE categoria (
  categoria_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(25) NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (categoria_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `ciudad`
--

CREATE TABLE ciudad (
  ciudad_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  ciudad VARCHAR(50) NOT NULL,
  pais_id SMALLINT UNSIGNED NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (ciudad_id),
  KEY idx_fk_pais_id (pais_id),
  CONSTRAINT `fk_ciudad_pais` FOREIGN KEY (pais_id) REFERENCES pais (pais_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `pais`
--

CREATE TABLE pais (
  pais_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  pais VARCHAR(50) NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (pais_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `cliente`
--

CREATE TABLE cliente (
  cliente_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  tienda_id TINYINT UNSIGNED NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  direccion_id SMALLINT UNSIGNED NOT NULL,
  activo BOOLEAN NOT NULL DEFAULT TRUE,
  fecha_creacion DATETIME NOT NULL,
  ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (cliente_id),
  KEY idx_fk_tienda_id (tienda_id),
  KEY idx_fk_direccion_id (direccion_id),
  KEY idx_apellido (apellido),
  CONSTRAINT fk_cliente_direccion FOREIGN KEY (direccion_id) REFERENCES direccion (direccion_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_cliente_tienda FOREIGN KEY (tienda_id) REFERENCES tienda (tienda_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `pelicula`
--

CREATE TABLE pelicula (
  pelicula_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(255) NOT NULL,
  descripcion TEXT DEFAULT NULL,
  anio_estreno YEAR DEFAULT NULL,
  idioma_id TINYINT UNSIGNED NOT NULL,
  original_idioma_id TINYINT UNSIGNED DEFAULT NULL,
  duracion_renta TINYINT UNSIGNED NOT NULL DEFAULT 3,
  costo_renta DECIMAL(4,2) NOT NULL DEFAULT 4.99,
  duracion SMALLINT UNSIGNED DEFAULT NULL,
  costo_repuesto DECIMAL(5,2) NOT NULL DEFAULT 19.99,
  clasificacion ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
  caracteristica_especial SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (pelicula_id),
  KEY idx_titulo (titulo),
  KEY idx_fk_idioma_id (idioma_id),
  KEY idx_fk_original_idioma_id (original_idioma_id),
  CONSTRAINT fk_pelicula_idioma FOREIGN KEY (idioma_id) REFERENCES idioma (idioma_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_pelicula_idioma_original FOREIGN KEY (original_idioma_id) REFERENCES idioma (idioma_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `pelicula_actor`
--

CREATE TABLE pelicula_actor (
  actor_id SMALLINT UNSIGNED NOT NULL,
  pelicula_id SMALLINT UNSIGNED NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (actor_id,pelicula_id),
  KEY idx_fk_pelicula_id (`pelicula_id`),
  CONSTRAINT fk_pelicula_actor_actor FOREIGN KEY (actor_id) REFERENCES actor (actor_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_pelicula_actor_pelicula FOREIGN KEY (pelicula_id) REFERENCES pelicula (pelicula_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `pelicula_categoria`
--

CREATE TABLE pelicula_categoria (
  pelicula_id SMALLINT UNSIGNED NOT NULL,
  categoria_id TINYINT UNSIGNED NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (pelicula_id, categoria_id),
  CONSTRAINT fk_pelicula_categoria_pelicula FOREIGN KEY (pelicula_id) REFERENCES pelicula (pelicula_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_pelicula_categoria_categoria FOREIGN KEY (categoria_id) REFERENCES categoria (categoria_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `inventario`
--

CREATE TABLE inventario (
  inventario_id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  pelicula_id SMALLINT UNSIGNED NOT NULL,
  tienda_id TINYINT UNSIGNED NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (inventario_id),
  KEY idx_fk_pelicula_id (pelicula_id),
  KEY idx_tienda_id_pelicula_id (tienda_id,pelicula_id),
  CONSTRAINT fk_inventario_tienda FOREIGN KEY (tienda_id) REFERENCES tienda (tienda_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_inventario_pelicula FOREIGN KEY (pelicula_id) REFERENCES pelicula (pelicula_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `idioma`
--

CREATE TABLE idioma (
  idioma_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre CHAR(20) NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idioma_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `pago`
--

CREATE TABLE pago (
  pago_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  cliente_id SMALLINT UNSIGNED NOT NULL,
  empleado_id TINYINT UNSIGNED NOT NULL,
  renta_id INT DEFAULT NULL,
  cantidad DECIMAL(5,2) NOT NULL,
  pago_fecha DATETIME NOT NULL,
  ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (pago_id),
  KEY idx_fk_empleado_id (empleado_id),
  KEY idx_fk_cliente_id (cliente_id),
  CONSTRAINT fk_pago_renta FOREIGN KEY (renta_id) REFERENCES renta (renta_id) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT fk_pago_cliente FOREIGN KEY (cliente_id) REFERENCES cliente (cliente_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_pago_empleado FOREIGN KEY (empleado_id) REFERENCES empleado (empleado_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `renta`
--

CREATE TABLE renta (
  renta_id INT NOT NULL AUTO_INCREMENT,
  renta_fecha DATETIME NOT NULL,
  inventario_id MEDIUMINT UNSIGNED NOT NULL,
  cliente_id SMALLINT UNSIGNED NOT NULL,
  retorno_fecha DATETIME DEFAULT NULL,
  empleado_id TINYINT UNSIGNED NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (renta_id),
  UNIQUE KEY  (renta_fecha,inventario_id,cliente_id),
  KEY idx_fk_inventario_id (inventario_id),
  KEY idx_fk_cliente_id (cliente_id),
  KEY idx_fk_empleado_id (empleado_id),
  CONSTRAINT fk_rental_empleado FOREIGN KEY (empleado_id) REFERENCES empleado (empleado_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_rental_inventario FOREIGN KEY (inventario_id) REFERENCES inventario (inventario_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_rental_cliente FOREIGN KEY (cliente_id) REFERENCES cliente (cliente_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `empleado`
--

CREATE TABLE empleado (
  empleado_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  direccion_id SMALLINT UNSIGNED NOT NULL,
  foto BLOB DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  tienda_id TINYINT UNSIGNED NOT NULL,
  activo BOOLEAN NOT NULL DEFAULT TRUE,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(40) BINARY DEFAULT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (empleado_id),
  KEY idx_fk_tienda_id (tienda_id),
  KEY idx_fk_direccion_id (direccion_id),
  CONSTRAINT fk_empleado_tienda FOREIGN KEY (tienda_id) REFERENCES tienda (tienda_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_empleado_direccion FOREIGN KEY (direccion_id) REFERENCES direccion (direccion_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `tienda`
--

CREATE TABLE tienda (
  tienda_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  gerente_empleado_id TINYINT UNSIGNED NOT NULL,
  direccion_id SMALLINT UNSIGNED NOT NULL,
  ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (tienda_id),
  UNIQUE KEY idx_unique_gerente (gerente_empleado_id),
  KEY idx_fk_direccion_id (direccion_id),
  CONSTRAINT fk_tienda_empleado FOREIGN KEY (gerente_empleado_id) REFERENCES empleado (empleado_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_tienda_direccion FOREIGN KEY (direccion_id) REFERENCES direccion (direccion_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- View structure for view `cliente_list`
--

CREATE VIEW cliente_lista
AS
SELECT cu.cliente_id AS ID, CONCAT(cu.nombre, _utf8' ', cu.apellido) AS name, a.direccion AS direccion, a.codigo_postal AS `codigo postal`,
  a.telefono AS telefono, ciudad.ciudad AS ciudad, pais.pais AS pais, IF(cu.activo, _utf8'active',_utf8'') AS notes, cu.tienda_id AS SID
FROM cliente AS cu JOIN direccion AS a ON cu.direccion_id = a.direccion_id JOIN ciudad ON a.ciudad_id = ciudad.ciudad_id
  JOIN pais ON ciudad.pais_id = pais.pais_id;

--
-- View structure for view `pelicula_list`
--

CREATE VIEW pelicula_lista
AS
SELECT pelicula.pelicula_id AS FID, pelicula.titulo AS titulo, pelicula.descripcion AS descripcion, categoria.nombre AS categoria, pelicula.costo_renta AS price,
  pelicula.duracion, pelicula.clasificacion AS rating, GROUP_CONCAT(CONCAT(actor.nombre, _utf8' ', actor.apellido) SEPARATOR ', ') AS actors
FROM categoria
LEFT JOIN pelicula_categoria ON categoria.categoria_id = pelicula_categoria.categoria_id
LEFT JOIN pelicula ON pelicula_categoria.pelicula_id = pelicula.pelicula_id
JOIN pelicula_actor ON pelicula.pelicula_id = pelicula_actor.pelicula_id
JOIN actor ON pelicula_actor.actor_id = actor.actor_id
GROUP BY pelicula.pelicula_id, categoria.nombre;

--
-- View structure for view `empleado_list`
--

CREATE VIEW empleado_lista
AS
SELECT s.empleado_id AS ID, CONCAT(s.nombre, _utf8' ', s.apellido) AS name, a.direccion AS direccion, a.codigo_postal AS `codigo postal`, a.telefono AS telefono,
  ciudad.ciudad AS ciudad, pais.pais AS pais, s.tienda_id AS SID
FROM empleado AS s JOIN direccion AS a ON s.direccion_id = a.direccion_id JOIN ciudad ON a.ciudad_id = ciudad.ciudad_id
  JOIN pais ON ciudad.pais_id = pais.pais_id;

--
-- View structure for view `ventas_by_tienda`
--

CREATE VIEW ventas_por_tienda
AS
SELECT
CONCAT(c.ciudad, _utf8',', cy.pais) AS tienda
, CONCAT(m.nombre, _utf8' ', m.apellido) AS gerente
, SUM(p.cantidad) AS total_ventas
FROM pago AS p
INNER JOIN renta AS r ON p.renta_id = r.renta_id
INNER JOIN inventario AS i ON r.inventario_id = i.inventario_id
INNER JOIN tienda AS s ON i.tienda_id = s.tienda_id
INNER JOIN direccion AS a ON s.direccion_id = a.direccion_id
INNER JOIN ciudad AS c ON a.ciudad_id = c.ciudad_id
INNER JOIN pais AS cy ON c.pais_id = cy.pais_id
INNER JOIN empleado AS m ON s.gerente_empleado_id = m.empleado_id
GROUP BY s.tienda_id
ORDER BY cy.pais, c.ciudad;

--
-- View structure for view `ventas_by_pelicula_categoria`
--
-- Note that total ventas will add up to >100% because
-- some titulos belong to more than 1 categoria
--

CREATE VIEW ventas_por_pelicula_categoria
AS
SELECT
c.nombre AS categoria
, SUM(p.cantidad) AS total_ventas
FROM pago AS p
INNER JOIN renta AS r ON p.renta_id = r.renta_id
INNER JOIN inventario AS i ON r.inventario_id = i.inventario_id
INNER JOIN pelicula AS f ON i.pelicula_id = f.pelicula_id
INNER JOIN pelicula_categoria AS fc ON f.pelicula_id = fc.pelicula_id
INNER JOIN categoria AS c ON fc.categoria_id = c.categoria_id
GROUP BY c.nombre
ORDER BY total_ventas DESC;
