const pool =  require('../../src/dbConnection');

const crudNSPG = {};

crudNSPG.update = async(req,res)=>{
    const { schoolId,degreeId } = req.params;
     
    const {
        nspgNoFamaleStudents,
        nspgNoMaleStudents,
        nspgNoClassrooms
    } = req.body;

    const data = {
        schoolId,
        degreeId,
        nspgNoFamaleStudents,
        nspgNoMaleStudents,
        nspgNoClassrooms
    };

    const query = 'CALL updateNoStudentsPerGrade(?,?,?,?,?)';

    try {
        await pool.query(query,[
            data.schoolId,
            data.degreeId,
            data.nspgNoFamaleStudents,
            data.nspgNoMaleStudents,
            data.nspgNoClassrooms
        ]);

        res.status(200).json({
            msg:'No de estudiantes de la escuela actualizados',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'No de estudiantes de la escuela no actualizados',
            status:true
        });
    }

    
};

module.exports = crudNSPG;