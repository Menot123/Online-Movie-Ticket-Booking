const express = require('express');
const router = express.Router();
const { admin } = require('../../middlewares/auth/auth.middware')


const adminController = require('../../app/controllers/admin.controller');

router.get('/api/accounts', adminController.getAccounts);
router.get('/quan-ly-tai-khoan', admin,adminController.manageAccounts);

router.post('/api/delete/:id', adminController.handleDelete);
router.get('/api/get-info/:id', adminController.getInfo);
router.put('/api/update/:id', adminController.updateInfo);

router.get('/api/phan-hoi', adminController.getResponsesAPI)
router.get('/phan-hoi',admin, adminController.getResponses)

router.get('/api/sales', adminController.getSales);
router.get('/quan-ly-khuyen-mai',admin, adminController.manageSales);

router.get('/api/get-sale/:id', adminController.getSale);
router.put('/api/update-sale/:id', adminController.updateSale);
router.post('/api/delete-sale/:id', adminController.handleDeleteSale);
router.post('/api/add-sale', adminController.addSale);

router.get('/api/bills', adminController.getBills);
router.get('/quan-ly-hoa-don', admin, adminController.manageBills);

router.get('/api/suat-chieu', adminController.getSuatChieuAPI)
router.get('/suat-chieu',admin, adminController.getSuatChieu)
router.post('/suat-chieu', adminController.getSuatChieu2)

router.get('/api/films', adminController.getFilmsAPI)
router.get('/quan-ly-phim', admin, adminController.getFilms)
router.get('/api/get-films-info/:maphim', adminController.getFilmsInfo);
router.put('/api/updateFilms/:maphim', adminController.updateFilms);
router.post('/api/hideFilms/:maphim', adminController.hideFilms);
router.post('/api/addFilms', adminController.addFilms);

router.get('/api/combos',  adminController.getCombos)
router.get('/api/get-combo-info/:id', adminController.getComboInfo);
router.put('/api/update-combo/:id', adminController.updateCombo);
router.post('/api/add-combo', adminController.addCombo);
router.put('/api/hide-combo/:id', adminController.hideCombo);
router.get('/quan-ly-combo', admin, adminController.manageCombos)

router.get('/api/rooms', adminController.getRooms)
router.get('/api/get-room-info/:id', adminController.getRoomInfo);
router.put('/api/update-room/:id', adminController.updateRoom);
router.post('/api/add-room', adminController.addRoom);
router.put('/api/hide-room/:id', adminController.hideRoom);
router.get('/quan-ly-phong',admin, adminController.manageRooms)

router.get('/api/ma-phim', adminController.getMaPhimAPI)
router.post('/api/ma-phim', adminController.addMaPhim)
router.post('/api/:masuatchieu', adminController.hideMaPhim)
router.get('/api/phim', adminController.getPhimAPI)

module.exports = router;