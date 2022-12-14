const express =  require('express');
const cors = require('cors');
const morgan = require('morgan');
const routesSchools = require('../routes/taskRoutesSchool');
const routesUsers = require('../routes/taskRoutesUsers');
const routesNSPG = require('../routes/taskRoutesNoStudentsPerGrade');
const routesCityHalls = require('../routes/taskRoutesCityHalls');

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
app.use(mainRoute, routesSchools());
app.use(mainRoute, routesUsers());
app.use(mainRoute, routesNSPG());
app.use(mainRoute, routesCityHalls());



module.exports = app ;