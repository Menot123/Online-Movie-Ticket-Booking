// Define your services here
const repo = require('../repositories/admin.repository')
const moment = require('moment');

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
        console.log(err)
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

async function getSuatChieuAPI() {
    try {
        const result = await repo.getSuatChieuAPI()
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get movie session from db');
    }
}

async function getMaPhimAPI() {
    try {
        const result = await repo.getMaPhimAPI()
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get film from db');
    }
}

async function addMaPhim(obj) {
    try {
        const result = await repo.addMaPhim(obj)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot add film code to db');
    }
}

async function hideMaPhim(code) {
    try {
        const result = await repo.hideMaPhim(code)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot change status film code to db');
    }
}

async function getPhimAPI() {
    try {
        const result = await repo.getPhimAPI()
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get film from db');
    }
}

async function getSuatChieu(tenphim) {
    try {
        const result = await repo.getSuatChieu(tenphim)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get movie session from db');
    }
}



async function getSales() {
    try {
        const list = await repo.getSales()
        return list
    } catch (err) {
        throw new Error('Service: Cannot get sales');
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
async function getFilmsInfo(maphim) {
    try {
        const result = await repo.getFilmsInfo(maphim)

        return result
    } catch (err) {
        throw new Error('Service: Cannot get films information');
    }
}
async function updateFilms(maphim, tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai) {
    try {
        const result = await repo.updateFilms(maphim, tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot update films');
    }
}
async function addFilms(maphim, tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai) {
    try {
        const result = await repo.addFilms(maphim, tenphim, theloai, dienvien, quocgia, daodien, diemdanhgia, thoiluong, ngaykhoichieu, mota, poster, hinhngang, dotuoi, trailer, trangthai)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot add films');
    }
}

async function getFilmsAPI() {
    try {
        const result = await repo.getFilmsAPI()
        result.forEach((value, index, array) => {
            value.ngaykhoichieu = moment.utc(value.ngaykhoichieu).format('DD/MM/YYYY');

        })
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get films from db');
    }
}
async function hideFilms(maphim) {
    try {
        const result = await repo.hideFilms(maphim)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot change status film to db');
    }
}


async function getCombos() {
    try {
        const result = await repo.getCombos()
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get combos from db');
    }
}

async function getComboInfo(id) {
    try {
        const result = await repo.getComboInfo(id)
        return result
    } catch (err) {
        throw new Error('Service: Cannot see combo');
    }
}

async function updateCombo(id, ten, giatien, chitiet) {
    try {
        const result = await repo.updateCombo(id, ten, giatien, chitiet)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot update combo');
    }
}

async function addCombo(id, ten, giatien, chitiet) {
    try {
        const result = await repo.addCombo(id, ten, giatien, chitiet)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot add combo');
    }
}

async function hideCombo(id) {
    try {
        const result = await repo.hideCombo(id)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot hide combo');
    }
}




async function getRooms() {
    try {
        const result = await repo.getRooms()
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot get rooms from db');
    }
}

async function getRoomInfo(id) {
    try {
        const result = await repo.getRoomInfo(id)
        return result
    } catch (err) {
        throw new Error('Service: Cannot see room');
    }
}

async function updateRoom(id, ten, soluongghe) {
    try {
        const result = await repo.updateRoom(id, ten, soluongghe)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot update room');
    }
}

async function addRoom(id, ten, soluongghe) {
    try {
        const result = await repo.addRoom(id, ten, soluongghe)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot add room');
    }
}

async function hideRoom(id) {
    try {
        const result = await repo.hideRoom(id)
        return result
    } catch (err) {
        console.log(err)
        throw new Error('Service: Cannot hide room');
    }
}

async function getBills() {
    try {
        const list = await repo.getBills()
        return list
    } catch (err) {
        throw new Error('Service: Cannot get bills');
    }
}

module.exports = {
    manageAccounts,
    getAccounts,
    handleDelete,
    getInfo,
    updateInfo,
    getResponsesAPI,
    getSuatChieuAPI,
    getMaPhimAPI,
    addMaPhim,
    hideMaPhim,
    getPhimAPI,
    getSuatChieu,
    getSales,
    getSale,
    updateSale,
    handleDeleteSale,
    addSale,
    getFilmsAPI,
    updateFilms,
    getFilmsInfo,
    addFilms,
    hideFilms,
    getCombos,
    getComboInfo,
    updateCombo,
    addCombo,
    hideCombo,
    getRooms,
    getRoomInfo,
    updateRoom,
    addRoom,
    hideRoom,
    getBills
}