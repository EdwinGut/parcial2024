CREATE DATABASE estadoClima;

CREATE TABLE ciudad (
    id_ciudad SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(255) NOT NULL
);

CREATE TABLE clima (
    id_clima SERIAL PRIMARY KEY,
    estado VARCHAR(255) NOT NULL,
    id_ciudad INT,
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

INSERT INTO ciudad (nombre_ciudad) VALUES ('Bogotá');
INSERT INTO ciudad (nombre_ciudad) VALUES ('Medellín');
INSERT INTO ciudad (nombre_ciudad) VALUES ('Cali');
INSERT INTO ciudad (nombre_ciudad) VALUES ('Barranquilla');
INSERT INTO ciudad (nombre_ciudad) VALUES ('Cartagena');


INSERT INTO clima (estado, id_ciudad) VALUES ('Soleado', 1);
INSERT INTO clima (estado, id_ciudad) VALUES ('Lluvioso', 2);
INSERT INTO clima (estado, id_ciudad) VALUES ('Nublado', 3);
INSERT INTO clima (estado, id_ciudad) VALUES ('Ventoso', 4);
INSERT INTO clima (estado, id_ciudad) VALUES ('Húmedo', 5);


CREATE TABLE pais (
    id_pais SERIAL PRIMARY KEY,
    nombre_pais VARCHAR(255) NOT NULL
);

ALTER TABLE ciudad ADD COLUMN id_pais INT;
ALTER TABLE ciudad ADD CONSTRAINT fk_pais FOREIGN KEY (id_pais) REFERENCES pais(id_pais);


INSERT INTO pais (nombre_pais) VALUES ('Colombia');
INSERT INTO pais (nombre_pais) VALUES ('Brasil');
INSERT INTO pais (nombre_pais) VALUES ('Argentina');
INSERT INTO pais (nombre_pais) VALUES ('México');
INSERT INTO pais (nombre_pais) VALUES ('Chile');

UPDATE ciudad SET id_pais = 1 WHERE nombre_ciudad = 'Bogotá';
UPDATE ciudad SET id_pais = 1 WHERE nombre_ciudad = 'Medellín';
UPDATE ciudad SET id_pais = 1 WHERE nombre_ciudad = 'Cali';
UPDATE ciudad SET id_pais = 1 WHERE nombre_ciudad = 'Barranquilla';
UPDATE ciudad SET id_pais = 1 WHERE nombre_ciudad = 'Cartagena';
