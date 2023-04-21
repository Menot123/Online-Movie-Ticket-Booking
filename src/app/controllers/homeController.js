const homeServices = require('../../services/home.service')
const buyticketServices = require('../../services/buy_ticket.service')
const commingSoonServices = require('../../services/comming_soon.service')
const nowShowingServices = require('../../services/now_showing.service')
const favServices = require('../../services/fav.service')
const movieDetailServices = require('../../services/movie_detail.service')
const searchServices = require('../../services/search.service')
const reviewDetailServices = require('../../services/review_detail.service')
const blogDetailServices = require('../../services/blog_detail.service')
const actorServices = require('../../services/actor.service')
const topServices = require('../../services/top.service')
const actorDetailServices = require('../../services/actor_detail.service')
const directorServices = require('../../services/director.service')
const directorDetailServices = require('../../services/director_detail.service')
const favDetailService = require('../../services/fav_detail.service')
const movielServices = require('../../services/movie.service')
const { request } = require('express')
const mailer = require('../../util/mailer')


async function index(req, res, next) {
    try {
        const list = await homeServices.getListNotifications()
        const blogs = await homeServices.getBlogs()
        const films = await nowShowingServices.get6NowShowingFilm()
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

async function indexAdmin(req, res, next) {
    res.render('admin', { layout: false })
}

async function errorPage(req, res, next) {
    res.render('404', { layout: false })
}

async function handleLogout(req, res, next) {
    delete req.session.name
    delete req.session.social
    res.status(200).json({ message: 'Clear session successfully' })
}

async function movies(req, res, next) {
    try {
        const films = await nowShowingServices.getNowShowingFilm();
        res.render('now_showing', { films: films, nameUser: req.session.name });
    } catch (err) {
        console.error('An error when render now_showing', err.message);
        next(err);
    }
}
async function smovies(req, res, next) {
    try {
        const films = await commingSoonServices.getCommingSoonFilm()
        res.render('comming_soon', { films: films, nameUser: req.session.name });
    } catch (err) {
        console.error('An error when render comming_soon', err.message);
        next(err);
    }
}
async function fav(req, res, next) {
    try {
        const fav = await favServices.getFav();
        res.render('favorable', { fav: fav, nameUser: req.session.name });
    } catch (err) {
        console.error('An error when render fav', err.message);
        next(err);
    }
}
async function actor(req, res, next) {
    try {
        const list = await actorServices.getActor()
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('actor', { data: list, all4films: all4films });
    } catch (err) {
        console.error('An error when watching actor', err.message);
        next(err);
    }
}
async function top(req, res, next) {
    try {
        const list = await topServices.getTop()
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('top', { data: list, all4films: all4films });
    } catch (err) {
        console.error('An error when watching top', err.message);
        next(err);
    }
}

async function actorDetail(req, res, next) {
    try {
        let actors = [];
        if (req.params.madienvien) {
            actors = await actorDetailServices.getActor(req.params.madienvien);
        }
        const all4films = await nowShowingServices.get4NowShowingFilm();
        const all4actor = await actorDetailServices.get4Actor(); 
        res.render('actor_detail', { actors: actors, all4films: all4films, all4actor: all4actor, nameUser: req.session.name });
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
}
async function favDetail(req, res, next) {
    try {
        let fav = [];
        if (req.params.makhuyenmai) {
            fav = await favDetailService.getFav(req.params.makhuyenmai);
        }
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('fav_detail', { fav: fav, all4films: all4films, nameUser: req.session.name });
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
}
async function director(req, res, next) {
    try {
        const list = await directorServices.getDiector()
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('director', { data: list, all4films: all4films });
    } catch (err) {
        console.error('An error when watching director', err.message);
        next(err);
    }
}

async function directorDetail(req, res, next) {
    try {
        let directors = [];
        if (req.params.madaodien) {
            directors = await directorDetailServices.getDirector(req.params.madaodien);
        }
        const all4films = await nowShowingServices.get4NowShowingFilm();
        const all4director = await directorDetailServices.get4Director(); 
        res.render('director_detail', { directors: directors, all4films: all4films, all4director: all4director,nameUser: req.session.name });
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
}

async function review(req, res, next) {
    try {
        const list = await homeServices.getListNotifications()
        const films = await homeServices.getShortFilms()
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('movie_review', { data: list, films: films, nameUser: req.session.name, all4films: all4films });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function reviewDetail(req, res, next) {
    try {
        let tin = [];
        if (req.params.matin) {
            tin = await reviewDetailServices.getReviewDetail(req.params.matin);
        }

        const list = await reviewDetailServices.getRelatedPosts()

        const allfilms = await nowShowingServices.getNowShowingFilm();
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('movie_review_detail', { tin: tin, data: list, allfilms: allfilms, all4films: all4films });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function blog(req, res, next) {
    try {
        const blogs = await homeServices.getBlogs()
        const films = await homeServices.getShortFilms()
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('movie_blog', { blogs: blogs, films: films, nameUser: req.session.name, all4films: all4films });
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function blogDetail(req, res, next) {
    try {
        let tin = [];
        if (req.params.matin) {
            tin = await blogDetailServices.getBlogDetail(req.params.matin);
        }

        const list = await blogDetailServices.getRelatedPosts()
        const all4films = await nowShowingServices.get4NowShowingFilm();
        const allfilms = await nowShowingServices.getNowShowingFilm();

        res.render('movie_blog_detail', { tin: tin, data: list, allfilms: allfilms, all4films: all4films });
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

function supportPost(req, res, next) {
    res.render('support');
}


function deal(req, res, next) {
    res.render('favorable', { nameUser: req.session.name });
}

async function policy(req, res, next) {
    const data = await homeServices.getTop3Film()
    res.render('policy', { nameUser: req.session.name, data:data });
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
    res.render('buy_ticket', { films: films, calenders: groupCalenders, choose: req.params.maphim, nameUser: req.session.name, phoneUser: req.session.phone });
}

async function chooseTicket(req, res, next) {
    if (!req.session.name) {
        res.redirect("/login");
    } else {

        const suatchieu = await buyticketServices.getSuatChieu(req.params.masuatchieu);
        // console.log(req.params.masuatchieu)
        const film = await movieDetailServices.getPhim(req.params.maphim);
        const combo = await buyticketServices.getComboList();

        const seat = await buyticketServices.getRoomSeat(suatchieu.maphong);
        const groupSeat = [];
        seat.forEach((row) => {
            row.forEach((seat) => {
                const row = seat.maghe.charAt(0);
                seat.maghe = seat.maghe.substring(1)
                let rowSeat = groupSeat.find((item) => item.row === row);
                if (!rowSeat) {
                    rowSeat = {
                        row,
                        data: []
                    };
                    groupSeat.push(rowSeat);
                }
                rowSeat.data.push(seat);
            });
        });

        // Sort number seat
        groupSeat.forEach((row) => {
            row.data.sort(function(a, b) {
                return parseInt(a.maghe) - parseInt(b.maghe);
            });
        });
        // console.log(groupSeat[0]);
        res.render('choose_ticket', { suatchieu: suatchieu, film: film[0], combo: combo, seat: groupSeat, nameUser: req.session.name, phoneUser: req.session.phone, idUser: req.session.idUser, emailUser: req.session.email });
    }
}

async function payMent(req, res, next) {
    const data = req.body;

    // Kiểm tra xem chuỗi có bắt đầu bằng dấu phẩy hay không
    if (data.comboList.startsWith(",")) {
        data.comboList = data.comboList.slice(1); // Xóa dấu phẩy đầu tiên
    }
    // Kiểm tra xem chuỗi có kết thúc bằng dấu phẩy hay không
    if (data.comboList.endsWith(",")) {
        data.comboList = data.comboList.slice(0, -1); // Xóa dấu phẩy cuối cùng
    }

    const ticketId = await buyticketServices.getTicketId(data.maphim);
    delete data.maphim;
    data.ticketId = ticketId;
    console.log(data)
    const result = await buyticketServices.createBill(data)

    // Change seat status
    const roomId = await buyticketServices.getRoomId(data.masuatchieu)
    let seatString = data.seatList.split(",")
    seatString.forEach(async(row) => {
        let unableSeat = await buyticketServices.unableSeat(row, roomId);
    });

    // console.log(roomId);
    res.json(result);
}

async function useSale(req, res, next) {
    const data = req.body;
    const result = await buyticketServices.useSale(data.makhuyenmai)
    if (result) {
        // console.log(result.giamgia);
        res.json({ giamgia: result.giamgia })
            // res.json(result);
    } else {
        res.json({ failed: 1 });
    }

}

async function movie(req, res, next) {
    try {
        const list = await movielServices.getMovie()

        res.render('movie_genre', { data: list });
    } catch (err) {
        console.error('An error when watching movie', err.message);
        next(err);
    }
}

async function detail(req, res, next) {
    try {
        let films = [];
        if (req.params.maphim) {
            films = await movieDetailServices.getPhim(req.params.maphim);
        }
        const allfilms = await nowShowingServices.getNowShowingFilm();
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('movie_detail', { films: films, allfilms: allfilms, all4films: all4films, nameUser: req.session.name });
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
        res.render('search', { films: films, count: count, key: key, nameUser: req.session.name });
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
}


function ticketprice(req, res, next) {
    res.render('ticketprice', { nameUser: req.session.name })
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
    const history = await homeServices.getHistory(req.session.idUser)
    res.render('member', { info: info[0], nameUser: req.session.name, social: req.session.social,
    history: history })

}

async function handleUpdateInfo(req, res, next) {
    var info = 0
    if (req.session.name && req.session.idUser) {
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
        if (req.session.name) {
            res.status(200).json(req.session.name)
        } else {
            res.send('failed to get session')
        }
    } catch (err) {
        console.error('An error when login account', err.message);
        next(err);
    }
}

async function forgotPassword(req, res, next) {
    res.render('forgot_pass')
}

async function sendLinkReset(req, res, next) {
    if (!req.body.email) {
        res.redirect('/forgot-password')
    } else {
        const user = await homeServices.findUserByEmail(req.body.email)
        if (!user) {
            res.redirect('/forgot-password')
        } else {
            mailer.sendMail(user[0].email, "Khôi phục mật khẩu", `<a href="${process.env.APP_URL}/reset-password/${user[0].email}"> Nhấn vào đây để đặt lại mật khẩu mới</a>`)
            req.session.flash = { message: 'Vui lòng kiểm tra email để khôi phục mật khẩu' }
            res.redirect('/')
        }
    }
}

async function resetPassword(req, res, next) {
    res.render('reset_password', { email: req.params.email })
}

async function changePass(req, res, next) {
    var message = "Khôi phục mật khẩu thất bại!"
    if (req.body.password && req.body.email) {
        const result = await homeServices.changePass(req.body.password, req.body.email)
        if (result > 0) {
            message = "Khôi phục mật khẩu thành công!"
        }
    }
    req.session.flash = { message: message }
    res.redirect('/login')

}
async function aboutUs(req, res, next) {
    try {
        const all4films = await nowShowingServices.get4NowShowingFilm();
        res.render('about_us', { all4films: all4films });
    } catch (err) {
        console.error('An error', err.message);
        next(err);
    }
}

async function sendLinkResponse(req, res, next) {
    if (req.params.email && req.body.content) {
        mailer.sendMail(req.params.email, "CẢM ƠN bạn đã phản hồi cho chúng tôi", req.body.content)
        res.status(200).json({ message: 'Gửi phản hồi thành công', status: 1, email: req.params.email })
    } else {
        res.status(400).json({ message: 'Gửi phản hồi thất bại', status: 0, email: req.params.email })
    }
}

async function getHistoryByDay(req, res, next) {
    if(req.body.time != '') {
        const data = await homeServices.getHistoryByDay(req.body.time,req.session.idUser)
        res.status(200).json({message:"Get history by day successfully", history: data})
    } else {
        const data= await homeServices.getHistory(req.session.idUser)
        res.status(200).json({message:"Get all history successfully", history: data})
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
    chooseTicket,
    forgotPassword,
    sendLinkReset,
    resetPassword,
    changePass,
    indexAdmin,
    aboutUs,
    reviewDetail,
    blogDetail,
    supportPost,
    actor,
    actorDetail,
    director,
    directorDetail,
    movie,
    sendLinkResponse,
    payMent,
    useSale,
    fav,
    favDetail,
    top,
    getHistoryByDay,
};