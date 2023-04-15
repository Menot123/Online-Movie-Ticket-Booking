const homeServices = require('../../services/home.service')
const buyticketServices = require('../../services/buy_ticket.service')
const commingSoonServices = require('../../services/comming_soon.service')
const nowShowingServices = require('../../services/now_showing.service')
const movieDetailServices = require('../../services/movie_detail.service')
const searchServices = require('../../services/search.service')


async function index(req, res, next) {
    try {
        const list = await homeServices.getListNotifications()
        const blogs = await homeServices.getBlogs()
        const films = await homeServices.getShortFilms()
        res.render('home', {
            data: list,
            blogs: blogs,
            films: films
        });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function movies(req, res, next) {
    try {
        const films = await nowShowingServices.getNowShowingFilm();
        res.render('now_showing', { films: films });
    } catch (err) {
        console.error('An error when render now_showing', err.message);
        next(err);
    }
}
async function smovies(req, res, next) {
    try {
        const films = await commingSoonServices.getCommingSoonFilm()
        res.render('comming_soon', { films: films });
    } catch (err) {
        console.error('An error when render comming_soon', err.message);
        next(err);
    }
}

async function review(req, res, next) {
    try {
        const list = await homeServices.getListNotifications()
        const films = await homeServices.getShortFilms()
        res.render('movie_review', { data: list, films: films });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function blog(req, res, next) {
    try {
        const blogs = await homeServices.getBlogs()
        const films = await homeServices.getShortFilms()
        res.render('movie_blog', { blogs: blogs, films: films });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function support(req, res, next) {
    try {
        const films = await homeServices.getShortFilms()
        res.render('support', { films: films })
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }

}


function deal(req, res, next) {
    res.render('favorable');
}

function policy(req, res, next) {
    res.render('policy');
}

async function ticket(req, res, next) {
    const films = await homeServices.getShortFilms()
    let calenders = []
    if (req.params.maphim) {
        calenders = await buyticketServices.getFilmCalender(req.params.maphim);
    }
    console.log(films)
    console.log(calenders)
    const groupCalenders = calenders.reduce((acc, cur) => {
        const existingDate = acc.find(item => item.ngaychieu === cur.ngaychieu);
        if (existingDate) {
            existingDate.giochieu.push(cur.giochieu);
        } else {
            acc.push({
                ngaychieu: cur.ngaychieu,
                giochieu: [cur.giochieu],
            });
        }
        return acc;
    }, []);
    // console.log(groupCalenders)
    res.render('buy_ticket', { films: films, calenders: groupCalenders, choose: req.params.maphim });
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
        res.render('movie_detail', { films: films , allfilms:allfilms});
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
        res.render('search', { films: films, count:count, key:key });
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
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
    search
};