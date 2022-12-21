const pool = require('../../src/dbConnection');

const crudSchools = {};

crudSchools.updateSchool = async(req,res)=>{
    const {schoolId} = req.params;
    
    const {
        schoolKeyCode,
        schoolName,
        schoolNoDirectors,
        schoolNoSupportStaff,
        schoolIdAddress,
        addressNoExternal,
        addressNoInternal,
        addressColony,
        addressIdCityHall,
        schoolIdTurn,
        schoolIdType,
        schoolIdLevel,
        schoolIdRegionalService,
        schoolIdOperationalDirection,
        schoolIdRegulatoryAgency,
        schoolIdGeneralDirection,
        schoolIdSf911,
        schoolIdAefcmSupport,
        schoolIdProgram
    } = req.body;

    const data = {
        schoolId,
        schoolKeyCode,
        schoolName,
        schoolNoDirectors,
        schoolNoSupportStaff,
        schoolIdAddress,
        addressNoExternal,
        addressNoInternal,
        addressColony,
        addressIdCityHall,
        schoolIdTurn,
        schoolIdType,
        schoolIdLevel,
        schoolIdRegionalService,
        schoolIdOperationalDirection,
        schoolIdRegulatoryAgency,
        schoolIdGeneralDirection,
        schoolIdSf911,
        schoolIdAefcmSupport,
        schoolIdProgram
    };

    const query = 'CALL updateSchool(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
    
    try {
        await pool.query(query,[
            data.schoolId,
            data.schoolKeyCode,
            data.schoolName,
            data.schoolNoDirectors,
            data.schoolNoSupportStaff,
            data.schoolIdAddress,
            data.addressNoExternal,
            data.addressNoInternal,
            data.addressColony,
            data.addressIdCityHall,
            data.schoolIdTurn,
            data.schoolIdType,
            data.schoolIdLevel,
            data.schoolIdRegionalService,
            data.schoolIdOperationalDirection,
            data.schoolIdRegulatoryAgency,
            data.schoolIdGeneralDirection,
            data.schoolIdSf911,
            data.schoolIdAefcmSupport,
            data.schoolIdProgram
        ]);
        res.status(200).json({
            msg:'Escuela actualizada',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Escuela no actualizada',
            status:true,
            err:error
        });
    }
}; 

module.exports = crudSchools;