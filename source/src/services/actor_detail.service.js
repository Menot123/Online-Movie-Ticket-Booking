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

async function get4Actor() {
    try {
        const list = await repo.get4Actor()
        if (list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get 4 now showing films');
    }
}
module.exports = {
    getActor, get4Actor
}