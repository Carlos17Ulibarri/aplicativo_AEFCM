const pool =  require('../../src/dbConnection');

const crudNSPG = {};

crudNSPG.deleteNSPG = async(req,res)=>{
    const { schoolId,degreeId } = req.params;

    const data = {
        schoolId,
        degreeId
    };

    const query = 'CALL deleteNoStudentsPerGrade(?,?,?,?,?)';

    try {
        await pool.query(query,[
            data.schoolId,
            data.degreeId
        ]);

        res.status(200).json({
            msg:'No de estudiantes de la escuela eliminados',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'No de estudiantes de la escuela no eliminados',
            status:true
        });
    }

    
};

module.exports = crudNSPG;