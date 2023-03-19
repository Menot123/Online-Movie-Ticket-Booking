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
    policy (req, res, next) {
        res.render('policy');
    }
}


module.exports = new HomeController();