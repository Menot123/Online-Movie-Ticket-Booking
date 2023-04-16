const repo = require('../repositories/comming_soon.repository')

async function getCommingSoonFilm() {
    try {
        const list = await repo.getCommingSoonFilm()
        if (list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get comming soon films');
    }
}

module.exports = {
    getCommingSoonFilm,
}