const express = require('express');
const router = express.Router();

const homeRouter = require('./homePage');
const accountRouter = require('./account')
const facebookRouter = require('./facebook')
const googleRouter = require('./google')
const suportRouter = require('./support')


router.use('/', homeRouter);
router.use('/account', accountRouter)
router.use('/auth/facebook',facebookRouter)
router.use('/auth/google',googleRouter)
router.use('/support', suportRouter)



module.exports = router;