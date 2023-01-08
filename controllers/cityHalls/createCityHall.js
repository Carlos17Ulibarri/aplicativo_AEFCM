const pool = require('../../src/dbConnection');

const crudCityHalls = {};

crudCityHalls.createCH = async(req)=>{
    const {
        chName,
        chNoPeople,
        chAgeRangeMan,
        chAgeRangeWomen,
        chPeopleAge15,
        chTotalPeopleInhabited
    } = req.body;

    const data = {
        chName,
        chNoPeople,
        chAgeRangeMan,
        chAgeRangeWomen,
        chPeopleAge15,
        chTotalPeopleInhabited
    };

    const query = 'CALL createCityHall(?,?,?,?,?,?)';

    try {
        await pool.query(query,[
            data.chName,
            data.chNoPeople,
            data.chAgeRangeMan,
            data.chAgeRangeWomen,
            data.chPeopleAge15,
            data.chTotalPeopleInhabited
        ]);

        res.status(200).json({
            msg:'Alcaldía creada',
            status:true
        });
    } catch (error) {
        res.status(404),json({
            msg:'Error: Alcaldía no creada',
            status:true,
            err:error
        });
    }

};

module.exports = crudCityHalls;