const pool = require('../../src/dbConnection');

const crudUsers = {};

crudUsers.updateUser = async(req,res)=>{
    const { userId } = req.params;
    
    const{
        userMail,
        userEmail,
        userPaternalName,
        userMaternalName,
        userPassword,
        userIdTurn,
        userIdRol
    } = req.body;

    const data = {
        userId,
        userMail,
        userEmail,
        userPaternalName,
        userMaternalName,
        userPassword,
        userIdTurn,
        userIdRol
    };

    const query = 'CALL updateUser(?,?,?,?,?,?,?)';

    try {
        await pool.query(query,[
            data.userId,
            data.userMail,
            data.userEmail,
            data.userPaternalName,
            data.userMaternalName,
            data.userPassword,
            data.userIdTurn,
            data.userIdRol
        ]);
        res.status(200).json({
            msg:'Usuario actualizado',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Usuario no actaulizado',
            status:true,
            err:error
        });
    }
};
module.exports = crudUsers;