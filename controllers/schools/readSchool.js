const pool = require('../../src/dbConnection');

const crudSchools = {};

crudSchools.readSchool = async(req,res)=>{
    const query = 'CALL readSchool()';

    try {
        await pool.query(query);
        res.status(200).json({
            msg:'Escuelas obtenidas',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Escuela no obtenidas',
            status:true,
            err:error
        });
    }
};

module.exports = crudSchools;