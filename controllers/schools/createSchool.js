const pool = require('../../src/dbConnection');

const crudSchools = {};

crudSchools.createSchool = async(req,res)=>{
    const {
        schoolKeyCode,
        schoolName,
        schoolNoDirectors,
        schoolNoSupportStaff,
        schoolIdTurn,
        schoolIdType,
        schoolIdLevel,
        schoolIdRegionalService,
        schoolIdOperationalDirection,
        schoolIdRegulatoryAgency,
        schoolIdGeneralDirection,
        schoolIdSf911,
        schoolIdAefcmSupport,
        schoolIdProgram,
        addressNoExternal,
        addressNoInternal,
        addressColony,
        addressIdCityHall,
        schoolIdDegree,
        schoolIdNoPerGrade
    } = req.body;

    const data = {
        schoolKeyCode,
        schoolName,
        schoolNoDirectors,
        schoolNoSupportStaff,
        schoolIdTurn,
        schoolIdType,
        schoolIdLevel,
        schoolIdRegionalService,
        schoolIdOperationalDirection,
        schoolIdRegulatoryAgency,
        schoolIdGeneralDirection,
        schoolIdSf911,
        schoolIdAefcmSupport,
        schoolIdProgram,
        addressNoExternal,
        addressNoInternal,
        addressColony,
        addressIdCityHall,
        schoolIdDegree,
        schoolIdNoPerGrade
    };

    const query = 'CALL createSchool(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
    
    try {
        await pool.query(query,[
            data.schoolKeyCode,
            data.schoolName,
            data.schoolNoDirectors,
            data.schoolNoSupportStaff,
            data.schoolIdTurn,
            data.schoolIdType,
            data.schoolIdLevel,
            data.schoolIdRegionalService,
            data.schoolIdOperationalDirection,
            data.schoolIdRegulatoryAgency,
            data.schoolIdGeneralDirection,
            data.schoolIdSf911,
            data.schoolIdAefcmSupport,
            data.schoolIdProgram,
            data.addressNoExternal,
            data.addressNoInternal,
            data.addressColony,
            data.addressIdCityHall,
            data.schoolIdDegree,
            data.schoolIdNoPerGrade
        ]);
        res.status(200).json({
            msg:'Escuela creada',
            status:true
        });
    } catch (error) {
        res.status(404).json({
            msg:'Error: Escuela no creada',
            status:true,
            err:error
        });
    }
}; 

module.exports = crudSchools;