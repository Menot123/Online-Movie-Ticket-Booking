const express = require('express');
const router = express.Router();

const supportController = require('../../app/controllers/support.controller');

router.post('/ho-tro', supportController.handleSupport);


module.exports = router;