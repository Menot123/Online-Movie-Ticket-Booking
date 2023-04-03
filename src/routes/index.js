const express = require('express');
const router = express.Router();

const homeRouter = require('./homePage');
const accountRouter = require('./account')


router.use('/', homeRouter);
router.use('/account', accountRouter)


module.exports = router;