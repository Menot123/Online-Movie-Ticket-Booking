class HomeController {

    // [GET] /
    index(req, res, next) {
        res.render('home');
    }
    movies (req, res, next) {
        res.render('phimdangchieu');
    }
    support(req, res, next) {
        res.render('support');
    }
    deal(req, res, next) {
        res.render('uuDai');
    }
}


module.exports = new HomeController();