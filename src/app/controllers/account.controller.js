const accountServices = require('../../services/account.service')

async function handleRegister(req, res, next) {
    try {
        const {username, phone, password} = req.body
        if(await accountServices.signUpAccount(username,phone,password)){
            res.render('login',{message: 'register successful'})
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
        let name = await accountServices.handleLogin(phone,  password)
        if(name) {
            req.session.name = name;
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
    handleRegister,handleLogin
};