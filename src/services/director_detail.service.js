const repo = require('../repositories/director_detail.repository')
const moment = require('moment');
async function getDirector(madaodien) {
    try {
        const list = await repo.getDirector(madaodien)
        list.forEach((value, index, array) => {
            value.ngaysinh = moment(value.ngaysinh).locale('vi').format('DD/MM/YYYY');
        })
        return list
    } catch (err) {
        throw new Error('Service: Cannot get actor');
    }
}
module.exports = {
    getDirector
}