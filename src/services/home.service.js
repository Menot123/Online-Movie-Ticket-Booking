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


async function getInfomationUser(name) {
    try {
        const info = await repo.getInfomationUser(name)
        if(info.length > 0) {
            return info
        }
        return null;
    } catch (err) {
        throw new Error('Service: Cannot get infomation of user');
    }
}

async function handleUpdateInfo(user, id) {
    try {
        const info = await repo.handleUpdateInfo(user, id)
        return info;
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot update info user');
    }
}

async function checkPass(pass, phone) {
    try {
        const status = await repo.checkPass(pass, phone)
        return status;
    } catch (err) {
        console.log(err);
    }
}

async function findUserByEmail(email) {
    try {
        const status = await repo.findUserByEmail(email)
        return status;
    } catch (err) {
        console.log(err);
    }
}

async function changePass(password,email) {
    try {
        const status = await repo.changePass(password,email)
        return status;
    } catch (err) {
        console.log(err);
    }
}

module.exports = {
    getListNotifications, getBlogs,getShortFilms,getInfomationUser,handleUpdateInfo,checkPass,findUserByEmail,changePass,
}