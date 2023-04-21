// Define your services here
const repo = require('../repositories/google.repository')


async function signUpWithGoogle(username,email) {
    try {
        const result = await repo.signUpWithGoogle(username,email)
        return result
    } catch (err) {
        throw new Error('Service: Cannot register with Google');
    }
}

async function checkAccount(email) {
    try {
        const result = await repo.checkAccount(email)
        return result
    } catch (err) {
        throw new Error('Service: Check account failed: ');
    }
}

module.exports = {
    signUpWithGoogle,checkAccount
}