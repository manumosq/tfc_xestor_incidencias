CREATE DATABASE IF NOT EXISTS dbxestorincidencias CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';
USE dbxestorincidencias;

#Táboa Provincias

CREATE TABLE provincias(
id INT(2) NOT NULL,
nome VARCHAR(50) NOT NULL,

CONSTRAINT pk_provincias PRIMARY KEY(id)
)ENGINE=InnoDb DEFAULT CHARSET=utf8;

#Táboa clientes

CREATE TABLE clientes(
id              INT(255) AUTO_INCREMENT NOT NULL,
cod_cliente     VARCHAR(20),
nom_fiscal      VARCHAR(50) NOT NULL,
nom_comercial   VARCHAR(50) NOT NULL,
cif             VARCHAR(20) NOT NULL,
direccion       VARCHAR(50) NOT NULL,
cod_postal      VARCHAR(5) NOT NULL,
localidade      VARCHAR(50) NOT NULL,
provincia_id    INT(2) NOT NULL,
telefono        VARCHAR(9) NOT NULL,
email           VARCHAR(50) NOT NULL,
created_at      DATETIME,
updated_at      DATETIME,

CONSTRAINT pk_clientes PRIMARY KEY(id),
CONSTRAINT uq_cif UNIQUE(cif),
CONSTRAINT fk_provincia_cliente FOREIGN KEY (provincia_id) REFERENCES provincias(id)
)ENGINE=InnoDb DEFAULT CHARSET=utf8;

#Táboa proxectos

CREATE TABLE proxectos(
id              INT(255) AUTO_INCREMENT NOT NULL,
cliente_id      INT(255) NOT NULL,
cod_proxecto    VARCHAR(20),
nom_proxecto    VARCHAR(50) NOT NULL,
data_inicio     DATE NOT NULL,
data_fin        DATE,
created_at      DATETIME,
updated_at      DATETIME,

CONSTRAINT pk_proxectos PRIMARY KEY(id),
CONSTRAINT fk_proxecto_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id)
)ENGINE=InnoDb DEFAULT CHARSET=utf8;

#Táboa peticionarios

CREATE TABLE peticionarios(
id                  INT(255) AUTO_INCREMENT NOT NULL,
nome                VARCHAR(20) NOT NULL,
primeiro_apelido    VARCHAR(20) NOT NULL,
segundo_apelido     VARCHAR(20) NOT NULL,
telefono            VARCHAR(9),
email               VARCHAR(50) NOT NULL,
created_at      DATETIME,
updated_at      DATETIME,

CONSTRAINT pk_peticionarios PRIMARY KEY(id)
)ENGINE=InnoDb DEFAULT CHARSET=utf8;

#Táboa estados

CREATE TABLE estados(
id      INT(255) AUTO_INCREMENT NOT NULL,
nome    VARCHAR(20) NOT NULL,

CONSTRAINT pk_estados PRIMARY KEY(id)
)ENGINE=InnoDb DEFAULT CHARSET=utf8;

#Táboa usuarios

CREATE TABLE users(
id                  INT(255) AUTO_INCREMENT NOT NULL,
nome                VARCHAR(20) NOT NULL,
primeiro_apelido    VARCHAR(20) NOT NULL,
segundo_apelido     VARCHAR(20) NOT NULL,
telefono            VARCHAR(9) NOT NULL,
email               VARCHAR(50) NOT NULL,
rol                 VARCHAR(20) NOT NULL,
password            VARCHAR(255) NOT NULL,
created_at          DATETIME,
updated_at          DATETIME,

CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE= InnoDb  DEFAULT CHARSET=utf8;


#Táboa incidencias

CREATE TABLE incidencias(
id                      INT(255) AUTO_INCREMENT NOT NULL,
proxecto_id             INT(255) NOT NULL,
peticionario_id         INT(255) NOT NULL,
cod_inc                 VARCHAR(20),
cod_inc_cliente         VARCHAR(20),
nom_incidencia          VARCHAR(50) NOT NULL,
descripcion             MEDIUMTEXT,
data_peticion           DATETIME NOT NULL, 
data_planificada        DATETIME,
data_asistencia         DATETIME,
data_finalizacion       DATETIME,
tecnico_id              INT(255),
persoa_contacto        VARCHAR(20) NOT NULL,
telefono_contacto       VARCHAR(9) NOT NULL,
direccion_asistencia    VARCHAR(50) NOT NULL,
cod_postal              INT(5) NOT NULL,
provincia_id            INT(2) NOT NULL,
estado_actual           INT(255),
created_at              DATETIME,
updated_at              DATETIME,

CONSTRAINT pk_incidencias PRIMARY KEY(id),
CONSTRAINT fk_incidencia_proxecto FOREIGN KEY (proxecto_id) REFERENCES proxectos(id),
CONSTRAINT fk_incidencia_peticionario FOREIGN KEY (peticionario_id) REFERENCES peticionarios(id),
CONSTRAINT fk_incidencia_users FOREIGN KEY (tecnico_id) REFERENCES users(id),
CONSTRAINT fk_incidencia_provincia FOREIGN KEY (provincia_id) REFERENCES provincias(id)
)ENGINE= InnoDb DEFAULT CHARSET=utf8;

#Táboa estados_incidencias

CREATE TABLE estados_incidencias(
incidencia_id   INT(255) NOT NULL,
estado_id       INT(255) NOT NULL,
created_at      DATETIME,
updated_at      DATETIME,

CONSTRAINT pk_estados_incidencias PRIMARY KEY(incidencia_id, estado_id),
CONSTRAINT fk_estados_incidencias_estados FOREIGN KEY (estado_id) REFERENCES estados(id),
CONSTRAINT fk_estados_incidencias_incidencias FOREIGN KEY (incidencia_id) REFERENCES incidencias(id)

)ENGINE= InnoDb DEFAULT CHARSET=utf8;

#TRIGGERS/DISPARADORES PARA CREAR OS CÓDIGOS INTERNOS

#TRIGGER CREAR COD_CLIENTE

DELIMITER $$
CREATE TRIGGER clientes_BI BEFORE INSERT ON clientes FOR EACH ROW 
BEGIN 
IF ((SELECT COUNT(id) FROM clientes) = 0) THEN 
SET new.cod_cliente = concat('CLI', 1);
ELSE
SET new.cod_cliente = concat('CLI', ((SELECT MAX(id) FROM clientes) + 1)); 
END IF;
END $$
DELIMITER ;

#TRIGGER CREAR COD_PROXECTO

DELIMITER $$
CREATE TRIGGER proxectos_BI BEFORE INSERT ON proxectos FOR EACH ROW 
BEGIN 
IF ((SELECT COUNT(id) FROM proxectos) = 0) THEN 
SET new.cod_proxecto = concat('PROX', 1);
ELSE
SET new.cod_proxecto = concat('PROX', ((SELECT MAX(id) FROM proxectos) + 1)); 
END IF;
END $$
DELIMITER ;

#TRIGGER CREAR COD_INCIDENCIA

DELIMITER $$

CREATE TRIGGER incidencias_BI BEFORE INSERT ON incidencias FOR EACH ROW 
BEGIN 
IF ((SELECT COUNT(id) FROM incidencias) = 0) THEN 
SET new.cod_inc = concat('INC', 1);
ELSE
SET new.cod_inc = concat('INC', ((SELECT MAX(id) FROM incidencias) + 1)); 
END IF;
END $$

DELIMITER ;

#VOLCADOS TÁBOAS ESTÁTICAS

#USUARIO INICIAL

INSERT INTO users VALUES
(NULL, 'XESTOR', 'INCIDENCIAS', 'ADMINISTRADOR', '600600600', 'admin@xestorincidencias.com', 'ADMINISTRADOR', '$2y$10$sgwu/LoYgxGYvKXTHRYl7u.2fzUYhCRiKgcXPZLLYg2K.KAbHw1Oa', '2020-12-08 15:24:41', '2020-12-08 15:24:41');
#ESTADOS INCIDENCIAS

INSERT INTO estados VALUES
(1, 'REXISTRADA'),
(2, 'PLANIFICADA'),
(3, 'EN PROCESO'),
(4, 'FINALIZADA'),
(5, 'CANCELADA');

#PROVINCIAS ESPAÑA

INSERT INTO provincias VALUES
(1, 'Alava'),
(2, 'Albacete'),
(3, 'Alicante'),
(4, 'Almería'),
(5, 'Avila'),
(6, 'Badajoz'),
(7, 'Islas Baleares'),
(8, 'Barcelona'),
(9, 'Burgos'),
(10, 'Cáceres'),
(11, 'Cádiz'),
(12, 'Castellón'),
(13, 'Ciudad Real'),
(14, 'Córdoba'),
(15, 'Coruña, A'),
(16, 'Cuenca'),
(17, 'Girona'),
(18, 'Granada'),
(19, 'Guadalajara'),
(20, 'Gipuzkoa'),
(21, 'Huelva'),
(22, 'Huesca'),
(23, 'Jaén'),
(24, 'León'),
(25, 'Lleida'),
(26, 'Rioja, La'),
(27, 'Lugo'),
(28, 'Madrid'),
(29, 'Málaga'),
(30, 'Murcia'),
(31, 'Navarra'),
(32, 'Ourense'),
(33, 'Asturias'),
(34, 'Palencia'),
(35, 'Palmas, Las'),
(36, 'Pontevedra'),
(37, 'Salamanca'),
(38, 'Santa Cruz de Tenerife'),
(39, 'Cantabria'),
(40, 'Segovia'),
(41, 'Sevilla'),
(42, 'Soria'),
(43, 'Tarragona'),
(44, 'Teruel'),
(45, 'Toledo'),
(46, 'Valencia'),
(47, 'Valladolid'),
(48, 'Bizkaia'),
(49, 'Zamora'),
(50, 'Zaragoza'),
(51, 'Ceuta'),
(52, 'Melilla');