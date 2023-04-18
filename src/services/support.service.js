// Define your services here
const repo = require('../repositories/support.repository')


async function support(name, phone, subject, message) {
    try {
        if(await repo.support(name, phone, subject, message) > 0) {
            return true
        }
    } catch (err) {
        throw new Error('Service: Cannot get support');
    }
}

module.exports = {
    support
}