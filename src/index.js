const app =  require('./app');
require ('dotenv').config();

//Escuchar peticiones al puerto
app.listen( process.env.PORT, () => {
    console.log('Server running on port: ' , process.env.PORT);
});