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

async function get4Director() {
    try {
        const list = await repo.get4Director()
        if (list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get 3 now showing actor');
    }
}
module.exports = {
    getDirector, get4Director
}