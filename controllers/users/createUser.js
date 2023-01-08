const pool = require('../../src/dbConnection');

const crudUsers = {};

crudUsers.createUser = async(req,res)=>{
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
        userMail,
        userEmail,
        userPaternalName,
        userMaternalName,
        userPassword,
        userIdTurn,
        userIdRol
    };

    const query = 'CALL createUser(?,?,?,?,?,?,?)';

    try {
        await pool.query(query,[
            data.userMail,
            data.userEmail,
            data.userPaternalName,
            data.userMaternalName,
            data.userPassword,
            data.userIdTurn,
            data.userIdRol
        ]);
        res.status(200).json({
            msg:'Usuario creado',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Usuario no creado',
            status:true,
            err:error
        });
    }
};
module.exports = crudUsers;