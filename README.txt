Este repositorio contiene un sistema básico para la gestión de climas utilizando Node.js con Express y PostgreSQL como base de datos. La aplicación está diseñada para ejecutarse en un entorno Docker utilizando `docker-compose`.

## Clonar el Repositorio

Para obtener el código, clona este repositorio:

```bash
git clone https://github.com/EdwinGut/parcial2024.git
cd parcial2024

Cómo Ejecutar el Proyecto
Construir y levantar los servicios con node.js con node servidor.js:

const client = new Client({
  host: 'localhost', // Cambiar si estás usando una base de datos remota
  user: 'postgres',  // Tu usuario de PostgreSQL
  password: 'Siglo212024', // Tu contraseña de PostgreSQL
  database: 'estadoClima', // Nombre de la base de datos
  port: 5432
});

clonar la base de datos si es necesario backup.sql.

Endpoints Disponibles
POST /insertar: Inserta un nuevo estado climático en la base de datos.
Endpoints Disponibles
POST /insertar: Inserta un nuevo estado climático en la base de datos.


Cómo Ejecutar el Proyecto
Construir y levantar los servicios:
docker-compose up --build


Autores 
ARAQUE QUINTERO LEONARDO
GARCÍA GIRALDO DORIAN ALBERTO
GUTIÉRREZ URIBE EDWIN GUSTAVO
SUAREZ CARLOS FELIPE