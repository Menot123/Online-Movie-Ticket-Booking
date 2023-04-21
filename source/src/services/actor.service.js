// Define your services here
const repo = require('../repositories/actor.repository')

async function getActor() {
    try {
        const list = await repo.getActor()

        return list
    } catch (err) {
        throw new Error('Service: Cannot get actor');
    }
}


module.exports = {
    getActor
}