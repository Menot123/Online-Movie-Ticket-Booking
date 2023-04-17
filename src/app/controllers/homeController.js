const homeServices = require('../../services/home.service')
const buyticketServices = require('../../services/buy_ticket.service')
const commingSoonServices = require('../../services/comming_soon.service')
const nowShowingServices = require('../../services/now_showing.service')
const movieDetailServices = require('../../services/movie_detail.service')
const searchServices = require('../../services/search.service')
const { request } = require('express')


async function index(req, res, next) {
    try {
        const list = await homeServices.getListNotifications()
        const blogs = await homeServices.getBlogs()
        const films = await homeServices.getShortFilms()
        res.render('home', {
            data: list,
            blogs: blogs,
            films: films,
            nameUser: req.session.name,
        });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function errorPage(req, res, next) {
    res.render('404',{ layout: false })
}

async function handleLogout(req, res, next) {
    delete req.session.name
    delete req.session.social
    res.status(200).json({message: 'Clear session successfully'})
}

async function movies(req, res, next) {
    try {
        const films = await nowShowingServices.getNowShowingFilm();
        res.render('now_showing', { films: films,nameUser: req.session.name });
    } catch (err) {
        console.error('An error when render now_showing', err.message);
        next(err);
    }
}
async function smovies(req, res, next) {
    try {
        const films = await commingSoonServices.getCommingSoonFilm()
        res.render('comming_soon', { films: films ,nameUser: req.session.name});
    } catch (err) {
        console.error('An error when render comming_soon', err.message);
        next(err);
    }
}

async function review(req, res, next) {
    try {
        const list = await homeServices.getListNotifications()
        const films = await homeServices.getShortFilms()
        res.render('movie_review', { data: list, films: films, nameUser: req.session.name });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function blog(req, res, next) {
    try {
        const blogs = await homeServices.getBlogs()
        const films = await homeServices.getShortFilms()
        res.render('movie_blog', { blogs: blogs, films: films , nameUser: req.session.name});
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function support(req, res, next) {
    try {
        const films = await homeServices.getShortFilms()
        res.render('support', { films: films, nameUser: req.session.name })
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }

}


function deal(req, res, next) {
    res.render('favorable', {nameUser: req.session.name});
}

function policy(req, res, next) {
    res.render('policy', {nameUser: req.session.name});
}

async function ticket(req, res, next) {
    const films = await homeServices.getShortFilms()
    let calenders = []
    if (req.params.maphim) {
        calenders = await buyticketServices.getFilmCalender(req.params.maphim);
    }

    const groupCalenders = calenders.reduce((acc, cur) => {
        const existingDate = acc.find(item => item.ngaychieu === cur.ngaychieu);
        if (existingDate) {
            existingDate.suatchieu.push({ masuatchieu: cur.masuatchieu, giochieu: cur.giochieu });
        } else {
            acc.push({
                ngaychieu: cur.ngaychieu,
                suatchieu: [{ masuatchieu: cur.masuatchieu, giochieu: cur.giochieu }]
            });
        }
        return acc;
    }, []);
    res.render('buy_ticket', { films: films, calenders: groupCalenders, choose: req.params.maphim, nameUser: req.session.name });
}

async function chooseTicket(req, res, next) {
    const suatchieu = await buyticketServices.getSuatChieu(req.params.masuatchieu);
    // console.log(req.params.masuatchieu)
    const film = await movieDetailServices.getPhim(req.params.maphim);
    const combo = await buyticketServices.getComboList();
    // console.log(combo);
    res.render('choose_ticket', { suatchieu: suatchieu, film: film[0], combo: combo });
}


async function detail(req, res, next) {
    try {
        let films = [];
        if (req.params.maphim) {
            films = await movieDetailServices.getPhim(req.params.maphim);
        }
        const allfilms = await nowShowingServices.getNowShowingFilm();
        // const list = await homeServices.getListNotifications()

        // res.render('movie_detail');//data: list, films: films});
        res.render('movie_detail', { films: films , allfilms:allfilms, nameUser: req.session.name});
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
}
async function search(req, res, next) {
    try {
        let films = [];
        if (req.query.keyword) {
            films = await searchServices.searchFilms(req.query.keyword);
        }
        const key = req.query.keyword;
        const count = films.length;
        res.render('search', { films: films, count:count, key:key, nameUser: req.session.name });
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
}

function ticketprice(req, res, next) {
    res.render('ticketprice',{nameUser: req.session.name})
}

function handleLogin(req, res, next) {
    res.render('login');
}

function handleRegister(req, res, next) {
    res.render('register');
}

async function member(req, res, next) {
    var info = {}
    if (req.session.name) {
        info = await homeServices.getInfomationUser(req.session.name)
    }
    res.render('member', {info: info[0], nameUser: req.session.name, social : req.session.social})

}

async function handleUpdateInfo(req, res, next) {
    var info = 0
    if(req.session.name && req.session.idUser) {
        info = await homeServices.handleUpdateInfo(req.body, req.session.idUser)
    }
    if (info) {
        req.session.flash = {
            message: `Cập nhật thông tin thành công!`,
        }
        res.redirect('/thanh-vien')
    }
}

async function checkPass(req, res, next) {
    const status = await homeServices.checkPass(req.body.password, req.body.phone)
    var check = false
    if (status == 1) {
        check = true
    }
    res.json({ check: check })
}

async function checkSession(req, res, next) {
    try {
        if(req.session.name) {
            res.status(200).json(req.session.name)
        }
        else {
            res.send('failed to get session')
        }
    } catch (err) {
        console.error('An error when login account', err.message);
        next(err);
    }
}



module.exports = {
    index,
    movies,
    smovies,
    support,
    deal,
    policy,
    ticket,
    ticketprice,
    handleLogin,
    handleRegister,
    review,
    blog,
    detail,
    search,
    member,
    handleUpdateInfo,
    checkPass,
    checkSession,
    errorPage,
    handleLogout,
    chooseTicket
};