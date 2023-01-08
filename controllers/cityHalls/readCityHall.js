const pool = require('../../src/dbConnection');

const crudCityHalls = {};

crudCityHalls.readCH = async(req)=>{
    const query = 'CALL readCityHall()';

    try {
        await pool.query(query);

        res.status(200).json({
            msg:'Alcaldías obtenidas',
            status:true
        });
    } catch (error) {
        res.status(404),json({
            msg:'Error: Alcaldía no creada',
            status:true,
            err:error
        });
    }

};

module.exports = crudCityHalls;