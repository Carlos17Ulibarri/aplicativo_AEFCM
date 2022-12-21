const express= require('express');
const router = express.Router();
const {createSchool} = require('../controllers/schools/createSchool');
const {readSchool} = require('../controllers/schools/readSchool');
const {updateSchool} = require('../controllers/schools/updateSchool');
const {deleteSchool} = require('../controllers/schools/deleteSchool');

module.exports = function(){
    router.post('/schools/create',createSchool);
    router.get('/schools/read',readSchool);
    router.put('/schools/update',updateSchool);
    router.delete('/schools/delete',deleteSchool);
    return router;
};