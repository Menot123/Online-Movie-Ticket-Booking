const repo = require('../repositories/movie_detail.repository')
const moment = require('moment');
async function getPhim(maphim) {
    try {
        const list = await repo.getPhim(maphim)
        list.forEach((value, index, array) => {
            value.ngaykhoichieu = moment(value.ngaykhoichieu).locale('vi').format('DD/MM/YYYY');
        })
        return list
    } catch (err) {
        throw new Error('Service: Cannot get film');
    }
}
module.exports = {
    getPhim
}