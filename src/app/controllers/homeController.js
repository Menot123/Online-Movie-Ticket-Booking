const homeServices = require('../../services/home.service')

async function index(req, res, next) {
    try {
        const list =await homeServices.getListNotifications()
        const blogs =await homeServices.getBlogs()
        const films =await homeServices.getShortFilms()
        res.render('home', {data: list,
             blogs: blogs,
            films: films});
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function movies(req, res, next) {
    try {
        res.render('phimdangchieu');;
    } catch (err) {
        console.error('An error when render phimdangchieu', err.message);
        next(err);
    }
}

function support(req, res, next) {
    res.render('support');
}


function deal(req, res, next) {
    res.render('uuDai');
}
function policy(req, res, next) {
    res.render('policy');
}
function ticket(req, res, next) {
    res.render('buy_ticket');
}
function ticketprice(req, res, next) {
    res.render('ticketprice')
}
function handleLogin(req, res, next) {
    res.render('login');
}
function handleRegister(req, res, next) {
    res.render('register');
}



module.exports = {
    index, movies, support, deal, policy, ticket, ticketprice, handleLogin, handleRegister
};