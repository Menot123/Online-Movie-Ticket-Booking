const express = require('express');
const router = express.Router();

const adminController = require('../../app/controllers/admin.controller');

router.get('/api/accounts', adminController.getAccounts);
router.get('/quan-ly-tai-khoan', adminController.manageAccounts);

router.post('/api/delete/:id', adminController.handleDelete);
router.get('/api/get-info/:id', adminController.getInfo);
router.put('/api/update/:id', adminController.updateInfo);

router.get('/api/phan-hoi', adminController.getResponsesAPI)
router.get('/phan-hoi',adminController.getResponses)


module.exports = router;