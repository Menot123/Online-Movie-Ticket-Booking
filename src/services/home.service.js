// Define your services here
const repo = require('../repositories/home.repository')


async function getListNotifications() {
    try {
        const list = await repo.getListNotifications()
        if(list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get list notifications');
    }
}

async function getBlogs() {
    try {
        const list = await repo.getBlogs()
        if(list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get blogs ');
    }
}

async function getShortFilms() {
    try {
        const list = await repo.getShortFilms()
        if(list.length > 0) {
            return list
        }
    } catch (err) {
        throw new Error('Service: Cannot get short films');
    }
}


module.exports = {
    getListNotifications, getBlogs,getShortFilms,
}