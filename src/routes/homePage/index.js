const express = require('express');
const router = express.Router();

const homeController = require('../../app/controllers/homeController');

router.get('/phim-dang-chieu', homeController.movies);
router.get('/ho-tro', homeController.support);
router.get('/uu-dai', homeController.deal);
router.get('/chinh-sach', homeController.policy);

router.get('/mua-ve/:maphim?', homeController.ticket);

router.get('/gia-ve', homeController.ticketprice);
router.get('/login', homeController.handleLogin);
router.get('/register', homeController.handleRegister);

router.get('/', homeController.index);



module.exports = router;