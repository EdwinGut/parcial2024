const axios = require('axios');

const datosClima = {
  estado: 'congelado',
  id_ciudad: 1
};

axios.post('http://localhost:3000/insertar',datosClima')
  .then(response => {
    console.log('Respuesta del servidor:', response.data);
  })
  .catch(error => {
    console.error('Error al enviar la solicitud:', error);
  });
