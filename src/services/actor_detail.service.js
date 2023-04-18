const repo = require('../repositories/actor_detail.repository')
const moment = require('moment');
async function getActor(madienvien) {
    try {
        const list = await repo.getActor(madienvien)
        list.forEach((value, index, array) => {
            value.ngaysinh = moment(value.ngaysinh).locale('vi').format('DD/MM/YYYY');
        })
        return list
    } catch (err) {
        throw new Error('Service: Cannot get actor');
    }
}
module.exports = {
    getActor
}