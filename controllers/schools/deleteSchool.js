const pool = require('../../src/dbConnection');

const crudSchools = {};

crudSchools.deleteSchool = async(req,res)=>{
    const {schoolId} = req.params;

    const query = 'CALL deleteSchool(?)';

    try {
        await pool.query(query,[schoolId]);
        res.status(200).json({
            msg:'Escuela eliminada',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Escuela no eliminada',
            status:true,
            err:error
        });
    }
};

module.exports = crudSchools;