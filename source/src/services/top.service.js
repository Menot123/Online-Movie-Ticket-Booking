// Define your services here
const repo = require('../repositories/top.repository')

async function getTop() {
    try {
        const list = await repo.getTop()
        return list
    } catch (err) {
        throw new Error('Service: Cannot get top');
    }
}


module.exports = {
    getTop
}