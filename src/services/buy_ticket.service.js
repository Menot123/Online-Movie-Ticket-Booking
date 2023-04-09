// Define your services here
const repo = require('../repositories/buy_ticket.repository')
const moment = require('moment');


async function getFilmCalender(maphim) {
    try {
        const list = await repo.getCalender(maphim)
        list.forEach((value, index, array) => {
            value.ngaychieu = moment(value.ngaychieu).locale('vi').format('dddd, DD/MM/YYYY');
            value.ngaychieu = value.ngaychieu.slice(0, 1).toUpperCase() + value.ngaychieu.slice(1);
            value.giochieu = value.giochieu.split(':').slice(0, 2).join(':');
        })

        return list
    } catch (err) {
        throw new Error('Service: Cannot get film calenders');
    }
}


module.exports = {
    getFilmCalender
}