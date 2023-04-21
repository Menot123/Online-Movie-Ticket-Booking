// Define your services here
const repo = require('../repositories/movie.repository')

async function getMovie() {
    try {
        const list = await repo.getMovie()

        return list
    } catch (err) {
        throw new Error('Service: Cannot get moive');
    }
}


module.exports = {
    getMovie
}