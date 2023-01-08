const pool = require('../../src/dbConnection');

const crudCityHalls = {};

crudCityHalls.deleteCH = async(req)=>{
    const { chId } = req.params;

    const data = { chId };

    const query = 'CALL updateCityHall(?)';

    try {
        await pool.query(query,[data.chId]);

        res.status(200).json({
            msg:'Alcaldía eliminada',
            status:true
        });
    } catch (error) {
        res.status(404),json({
            msg:'Error: Alcaldía no eliminada',
            status:true,
            err:error
        });
    }

};

module.exports = crudCityHalls;