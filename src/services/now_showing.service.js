const repo = require('../repositories/now_showing.repository')

async function getNowShowingFilm() {
    try {
        const list = await repo.getNowShowingFilm()
        if (list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get now showing films');
    }
}
async function get4NowShowingFilm() {
    try {
        const list = await repo.get4NowShowingFilm()
        if (list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get 4 now showing films');
    }
}
module.exports = {
    getNowShowingFilm,
    get4NowShowingFilm
}