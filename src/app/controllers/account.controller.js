const { request } = require('express')
const accountServices = require('../../services/account.service')

async function handleRegister(req, res, next) {
    try {
        const {username, phone, password} = req.body
        if(await accountServices.signUpAccount(username,phone,password)){
            req.session.flash = {
                message: 'Đăng ký tài khoản thành công'
            }
            res.redirect('/login')
        } else {
            res.render('register')
        }
    } catch (err) {
        console.error('An error when register account', err.message);
        next(err);
    }
}

async function handleLogin(req, res, next) {
    try {
        const {phone,  password} = req.body
        let user = await accountServices.handleLogin(phone,  password)
        if(user) {
            req.session.name = user.hoten;
            // req.session.flash = user.hoten;
            req.session.idUser = user.userid;
            res.redirect('/')
        } else {
            res.render('login')
        }
    } catch (err) {
        console.error('An error when login account', err.message);
        next(err);
    }
}





module.exports = {
    handleRegister,handleLogin,
};