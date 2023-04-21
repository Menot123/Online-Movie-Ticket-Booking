// Define your services here
const repo = require('../repositories/facebook.repository')


async function signUpWithFacebook(username, password) {
    try {
        const result = await repo.signUpWithFacebook(username,password)
        return result
    } catch (err) {
        throw new Error('Service: Cannot register with Facebook');
    }
}

async function checkAccount(id) {
    try {
        const result = await repo.checkAccount(id)
        return result
    } catch (err) {
        throw new Error('Service: Check account failed: ');
    }
}

module.exports = {
    signUpWithFacebook,checkAccount
}