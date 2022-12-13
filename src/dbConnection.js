const mysql = require('mysql');
const {database} =require('./dbKeys');
const {promisify} = require('util');
require ('dotenv').config();
 
const pool = mysql.createPool(database);

const connect =()=>{ 
    
pool.getConnection((err,connect)=> {

        if(err){
            if (err.code === 'PROTOCOL_CONNECTION_LOST' ) {
                console.log('Database connection was closed');
                setTimeout(connect, 5000);
                return;
            } 
            if (err.code === 'ECONNREFUSED') {
                console.log('Database connection was rejected');
                setTimeout(connect, 5000);
                return
                
            }
            if (err.code === 'ER_CON_COUNT_ERROR') {
             console.error('Database has many connections');
                setTimeout(connect, 5000);
                return;
           }
         }
         
         if(connect)
         {
            connect.release();
            console.log('Connected database');
            return;
         }
           
        
     });

}
connect();

// promesa a consultas (query)

pool.query = promisify(pool.query);
module.exports = pool; 

