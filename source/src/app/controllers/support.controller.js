const { request } = require('express')
const supportServices = require('../../services/support.service')

async function handleSupport(req, res, next) {
    try {
        const {name, phone, subject, message} = req.body
        if(await supportServices.support(name, phone, subject, message)){
            req.session.flash = {
                message: 'Gửi hỗ trợ thành công'
            }
            res.redirect('/ho-tro')
        } else {
            res.render('support')
        }
    } catch (err) {
        console.error('An error when support account', err.message);
        next(err);
    }
}


module.exports = {
    handleSupport
};