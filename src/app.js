const express =  require('express');
const cors = require('cors');
const morgan = require('morgan');
const routesSchool = require('../routes/taskRoutesSchool');

const app = express();


const config = {
  application: {
    cors:{
      server: [
        {
          origin: 'http://localhost:3000',
          credentials: true
        }
      ]
    }
  }

}

app.use(cors(
  config.application.cors.server
));

app.use(express.json({extend:true}));

app.use(morgan('dev'));

const mainRoute = '/api/aefcm';
app.use(mainRoute, routesSchool());


module.exports = app ;