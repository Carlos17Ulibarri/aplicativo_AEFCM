const express= require('express');
const router = express.Router();
const {createCH} = require('../controllers/cityhalls/createCityHall');
const {readCH} = require('../controllers/cityhalls/readCityHall');
const {updateCH} = require('../controllers/cityhalls/updateCityHall');
const {deleteCH} = require('../controllers/cityhalls/deleteCityHall');

module.exports = function(){
    router.post('/cityhalls/create',createCH);
    router.get('/cityhalls/read',readCH);
    router.put('/cityhalls/update',updateCH);
    router.delete('/cityhalls/delete',deleteCH);
    return router;
};