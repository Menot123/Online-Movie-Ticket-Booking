const repo = require('../repositories/fav_detail.repository')
async function getFav(makhuyenmai) {
    try {
        const list = await repo.getFav(makhuyenmai)
        return list
    } catch (err) {
        throw new Error('Service: Cannot get fav details');
    }
}
module.exports = {
    getFav
}