const express = require('express');
const router = express.Router();

const homeController = require('../../app/controllers/homeController');

router.get('/phim-dang-chieu', homeController.movies);
router.get('/phim-sap-chieu', homeController.smovies);

router.get('/ho-tro', homeController.support);
router.get('/uu-dai', homeController.deal);
router.get('/chinh-sach', homeController.policy);

router.get('/mua-ve/:maphim?', homeController.ticket);

router.get('/binh-luan-phim', homeController.review);
router.get('/blog-dien-anh', homeController.blog);

router.get('/gia-ve', homeController.ticketprice);
router.get('/login', homeController.handleLogin);
router.get('/register', homeController.handleRegister);
router.get('/thanh-vien', homeController.member);
router.post('/thanh-vien', homeController.handleUpdateInfo);
router.post('/check-pass', homeController.checkPass);


router.get('/', homeController.index);



module.exports = router;