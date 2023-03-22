const express = require('express');
const router = express.Router();




const homeController = require('../app/controllers/homeController');

router.get('/phim-dang-chieu', homeController.movies);
router.get('/ho-tro', homeController.support);
router.get('/uu-dai', homeController.deal);
router.get('/chinh-sach', homeController.policy);
router.get('/mua-ve', homeController.ticket);
router.get('/gia-ve', homeController.ticketprice);

router.get('/', homeController.index);



module.exports = router;