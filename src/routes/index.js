const express = require('express');
const router = express.Router();

const homeRouter = require('./homePage');
const accountRouter = require('./account')
const facebookRouter = require('./facebook')
const googleRouter = require('./google')
<<<<<<< HEAD
const adminRouter = require('./admin')
=======
const suportRouter = require('./support')
>>>>>>> aa0eb7b91a372e441c20dde821ae22ab3fe6e6a4


router.use('/', homeRouter);
router.use('/admin', adminRouter);
router.use('/account', accountRouter)
router.use('/auth/facebook',facebookRouter)
router.use('/auth/google',googleRouter)
router.use('/support', suportRouter)



module.exports = router;