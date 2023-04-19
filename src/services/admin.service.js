// Define your services here
const repo = require('../repositories/admin.repository')


async function manageAccounts(username, phone, password) {
    try {
        if (await repo.manageAccounts(username, phone, password) > 0) {
            return true
        }
    } catch (err) {
        throw new Error('Service: Cannot get account');
    }
}

async function getAccounts() {
    try {
        const list = await repo.getAccounts()
        return list
    } catch (err) {
        throw new Error('Service: Cannot get accounts');
    }
}

async function handleDelete(id) {
    try {
        const status = await repo.handleDelete(id)
        return status
    } catch (err) {
        throw new Error('Service: Cannot delete account');
    }
}

async function getInfo(id) {
    try {
        const result = await repo.getInfo(id)
        return result
    } catch (err) {
        throw new Error('Service: Cannot delete account');
    }
}

async function updateInfo(id, phone, pass) {
    try {
        const result = await repo.updateInfo(id, phone, pass)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot update account');
    }
}
async function getResponsesAPI() {
    try {
        const result = await repo.getResponsesAPI()
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get responses from db');
    }
}

async function getSales() {
    try {
        const list = await repo.getSales()
        return list
    } catch (err) {
        throw new Error('Service: Cannot get accounts');
    }
}

async function getSale(id) {
    try {
        const result = await repo.getSale(id)
        return result
    } catch (err) {
        throw new Error('Service: Cannot get sale');
    }
}

async function updateSale(id, tenkhuyenmai, chitiet, giamgia) {
    try {
        const result = await repo.updateSale(id, tenkhuyenmai, chitiet, giamgia)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot update sale');
    }
}

async function handleDeleteSale(id) {
    try {
        const status = await repo.handleDeleteSale(id)
        return status
    } catch (err) {
        throw new Error('Service: Cannot delete sale');
    }
}

async function addSale(tenkhuyenmai, chitiet, giamgia) {
    try {
        const result = await repo.addSale(tenkhuyenmai, chitiet, giamgia)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot add sale');
    }
}
module.exports = {
    manageAccounts,
    getAccounts,
    handleDelete,
    getInfo,
    updateInfo,
    getResponsesAPI,
    getSales,
    getSale,
    updateSale,
    handleDeleteSale,
    addSale
}