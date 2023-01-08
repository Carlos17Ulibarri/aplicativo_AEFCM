const express= require('express');
const router = express.Router();
const {createUser} = require('../controllers/users/createUser');
const {readUser} = require('../controllers/users/readUser');
const {updateUser} = require('../controllers/users/updateUser');
const {deleteUser} = require('../controllers/users/deleteUser');

module.exports = function(){
    router.post('/users/create',createUser);
    router.get('/users/read',readUser);
    router.put('/users/update',updateUser);
    router.delete('/users/delete',deleteUser);
    return router;
};