// Define your services here
const repo = require('../repositories/director.repository')

async function getDiector() {
    try {
        const list = await repo.getDiector()

        return list
    } catch (err) {
        throw new Error('Service: Cannot get director');
    }
}


module.exports = {
    getDiector
}