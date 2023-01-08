const express= require('express');
const router = express.Router();
const {create} = require('../controllers/noStudentsPerGrade/createNSPG');
const {read} = require('../controllers/noStudentsPerGrade/readNSP');
const {update} = require('../controllers/noStudentsPerGrade/updateNSPG');
const {deleteNSPG} = require('../controllers/noStudentsPerGrade/deleteNSPG');

module.exports = function(){
    router.post('/noStudentsPerGrade/create',create);
    router.get('/noStudentsPerGrade/read',read);
    router.put('/noStudentsPerGrade/update',update);
    router.delete('/noStudentsPerGrade/delete',deleteNSPG);
    return router;
};