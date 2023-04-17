const express = require('express');
const router = express.Router();
const { loggedin }  = require('../../middlewares/auth/auth.middware')

const homeController = require('../../app/controllers/homeController');

router.post('/logout',homeController.handleLogout)

router.get('/phim-dang-chieu', homeController.movies);
router.get('/phim-sap-chieu', homeController.smovies);

router.get('/ho-tro', homeController.support);
router.get('/uu-dai', homeController.deal);
router.get('/chinh-sach', homeController.policy);
router.get('/chi-tiet-phim/:maphim?', homeController.detail);
router.get('/tim-kiem', homeController.search);


router.get('/mua-ve/:maphim?', homeController.ticket);

router.get('/binh-luan-phim', homeController.review);
router.get('/blog-dien-anh', homeController.blog);

router.get('/gia-ve', homeController.ticketprice);
router.get('/login', homeController.handleLogin);
router.get('/register', homeController.handleRegister);
router.get('/thanh-vien',loggedin, homeController.member);
router.post('/thanh-vien', homeController.handleUpdateInfo);
router.post('/check-pass', homeController.checkPass);


router.get('/', homeController.index);
// router.post('/check', homeController.checkSession);




module.exports = router;