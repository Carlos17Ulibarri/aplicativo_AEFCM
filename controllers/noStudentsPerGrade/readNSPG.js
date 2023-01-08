const pool =  require('../../src/dbConnection');

const crudNSPG = {};

crudNSPG.read = async(req,res)=>{

    const query = 'CALL readNoStudentsPerGrade()';

    try {
        await pool.query(query);

        res.status(200).json({
            msg:'No de estudiantes de cada escuela obtenidos',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: No de estudiantes de la escuela no obtenidos',
            status:true
        });
    }

    
};

module.exports = crudNSPG;