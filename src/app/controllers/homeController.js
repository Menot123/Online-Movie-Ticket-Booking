class HomeController {

    // [GET] /
    index(req, res, next) {
        res.render('home');
    }
    movies(req, res, next) {
        res.render('phimdangchieu');
    }
    support(req, res, next) {
        res.render('support');
    }
    deal(req, res, next) {
        res.render('uuDai');
    }
    policy(req, res, next) {
        res.render('policy');
    }
    ticket(req, res, next) {
        res.render('buy_ticket');
    }
    ticketprice(req, res, next){
        res.render('ticketprice')
    }
    handleLogin(req,res, next) {
        res.render('login');
    }
    handleRegister(req,res, next) {
        res.render('register');
    }
}


module.exports = new HomeController();