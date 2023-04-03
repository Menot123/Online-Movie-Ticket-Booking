const express = require('express');
const router = express.Router();

const accountController = require('../../app/controllers/account.controller');

router.post('/register', accountController.handleRegister);
router.post('/login', accountController.handleLogin);




module.exports = router;