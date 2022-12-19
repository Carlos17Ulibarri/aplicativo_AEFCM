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
    try {
        await pool.query('CALL createSchool(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',[
            dschoolKeyCode,
            dschoolName,
            dschoolNoDirectors,
            dschoolNoSupportStaff,
            dschoolIdTurn,
            dschoolIdType,
            dschoolIdLevel,
            dschoolIdRegionalService,
            dschoolIdOperationalDirection,
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
        ]);
    } catch (error) {
        
    }
}; 

module.exports = crudSchools;