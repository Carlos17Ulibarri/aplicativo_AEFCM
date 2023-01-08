const pool = require('../../src/dbConnection');

const crudUsers = {};

crudUsers.readUser = async(req,res)=>{
    const query = 'CALL readUser()';

    try {
        await pool.query(query);

        res.status(200).json({
            msg:'Usuarios obtenidos',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Usuarios no obtenidos',
            status: true,
            err:error
        });
    }
};

module.exports = crudUsers;