const repo = require('../repositories/search.repository')
async function searchFilms(keyword) {
    try {
        const list = await repo.searchFilms(keyword)
        return list
    } catch (err) {
        throw new Error('Service: Cannot get film');
    }
}
module.exports = {
    searchFilms
}