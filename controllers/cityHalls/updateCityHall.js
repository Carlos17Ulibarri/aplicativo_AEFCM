const pool = require('../../src/dbConnection');

const crudCityHalls = {};

crudCityHalls.updateCH = async(req)=>{
    const { chId } = req.params;

    const {
        chName,
        chNoPeople,
        chAgeRangeMan,
        chAgeRangeWomen,
        chPeopleAge15,
        chTotalPeopleInhabited
    } = req.body;

    const data = {
        chId,
        chName,
        chNoPeople,
        chAgeRangeMan,
        chAgeRangeWomen,
        chPeopleAge15,
        chTotalPeopleInhabited
    };

    const query = 'CALL updateCityHall(?,?,?,?,?,?,?)';

    try {
        await pool.query(query,[
            data.chId,
            data.chName,
            data.chNoPeople,
            data.chAgeRangeMan,
            data.chAgeRangeWomen,
            data.chPeopleAge15,
            data.chTotalPeopleInhabited
        ]);

        res.status(200).json({
            msg:'Alcaldía actualizada',
            status:true
        });
    } catch (error) {
        res.status(404),json({
            msg:'Error: Alcaldía no actualizada',
            status:true,
            err:error
        });
    }

};

module.exports = crudCityHalls;