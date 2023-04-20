const repo = require('../repositories/fav.repository')

async function getFav() {
    try {
        const list = await repo.getFav()
        if (list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get favorite');
    }
}
module.exports = {
    getFav,
}