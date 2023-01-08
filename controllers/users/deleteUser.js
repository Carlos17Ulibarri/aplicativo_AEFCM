const pool = require('../../src/dbConnection');

const crudUsers = {};

crudUsers.deleteUser = async(req,res)=>{
    const { userId } = req.params;

    const data = { userId };
    const query = 'CALL deleteUser(?)';

    try {
        await pool.query(query,[data.userId,]);
        res.status(200).json({
            msg:'Usuario eliminado',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Usuario no eliminado',
            status:true,
            err:error
        });
    }
};
module.exports = crudUsers;