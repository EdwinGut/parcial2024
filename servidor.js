const express = require('express');
const { Client } = require('pg');
const app = express();
const port = 3000;

app.use(express.json());

// Configuración de la conexión a la base de datos PostgreSQL
const client = new Client({
  host: 'db',  // Cambiado de 'localhost' a 'db', que es el nombre del servicio en docker-compose
  user: 'postgres',
  password: 'Siglo212024',  // La contraseña debe coincidir con la definida en docker-compose.yml
  database: 'estadoClima',
  port: 5432
});

// Conectar a la base de datos
client.connect((err) => {
  if (err) throw err;
  console.log('Conectado a la base de datos PostgreSQL');
});

// Ruta POST para insertar un nuevo clima
app.post('/insertar', (req, res) => {
  const { estado, id_ciudad } = req.body;

  const sql = 'INSERT INTO clima(estado, id_ciudad) VALUES ($1, $2) RETURNING id';
  const valores = [estado, id_ciudad];

  client.query(sql, valores, (err, result) => {
    if (err) {
      console.error('Error ejecutando la consulta', err);
      res.status(500).send('Error al insertar el clima');
    } else {
      console.log('Clima insertado con ID:', result.rows[0].id);
      res.send(`Clima insertado correctamente con ID: ${result.rows[0].id}`);
    }
  });
});

// Ruta GET para consultar el clima
app.get('/clima', (req, res) => {
  const sql = 'SELECT nombre_pais, nombre_ciudad, estado FROM pais ' +
              'JOIN ciudad ON pais.id_pais = ciudad.id_pais ' +
              'JOIN clima ON ciudad.id_ciudad = clima.id_ciudad';

  client.query(sql, (err, result) => {
    if (err) {
      console.error('Error ejecutando la consulta', err);
      res.status(500).send('Error al consultar los climas');
    } else {
      res.json(result.rows);
    }
  });
});

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});
