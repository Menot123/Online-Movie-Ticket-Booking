// Define your services here
const repo = require('../repositories/buy_ticket.repository')
const moment = require('moment');


async function getFilmCalender(maphim) {
    try {
        const list = await repo.getCalender(maphim)
        list.forEach((value, index, array) => {
            value.ngaychieu = moment(value.ngaychieu).locale('vi').format('dddd, DD/MM/YYYY');
            value.ngaychieu = value.ngaychieu.slice(0, 1).toUpperCase() + value.ngaychieu.slice(1);
            value.giochieu = value.giochieu.split(':').slice(0, 2).join(':');
        })

        return list
    } catch (err) {
        throw new Error('Service: Cannot get film calenders');
    }
}

async function getSuatChieu(masuatchieu) {
    try {
        let suatchieu = await repo.getSuatChieu(masuatchieu)
        let result = suatchieu[0]
        result.ngaychieu = moment(result.ngaychieu).locale('vi').format('dddd, DD/MM/YYYY');
        result.ngaychieu = result.ngaychieu.slice(0, 1).toUpperCase() + result.ngaychieu.slice(1);
        result.giochieu = result.giochieu.split(':').slice(0, 2).join(':');
        return result
    } catch (err) {
        throw new Error('Service: Cannot get suat chieu');
    }
}

async function getComboList() {
    try {
        let combos = await repo.getComboList()
        return combos
    } catch (err) {
        throw new Error('Service: Cannot get combo list');
    }
}

async function getRoomSeat(roomId) {
    try {
        let seats = await repo.getRoomSeat(roomId)
        let groupSeat = seats.reduce((acc, curr) => {
            const firstChar = curr.maghe.charAt(0);
            if (!acc[firstChar]) {
                acc[firstChar] = [];
            }
            acc[firstChar].push(curr);
            return acc;
        }, {});
        let resultGroupSeat = Object.values(groupSeat);
        return resultGroupSeat
    } catch (err) {
        throw new Error('Service: Cannot get room seat');
    }
}

async function getTicketId(maphim) {
    try {
        let ticketId = await repo.getTicketId(maphim)
        return ticketId[0].mave
    } catch (err) {
        throw new Error('Service: Cannot get ticket Id');
    }
}

async function createBill(data) {
    try {
        let bill = await repo.createBill(data)
        return { status: "success" }
    } catch (err) {
        throw new Error('Service: Cannot Create Bill');
    }
}


module.exports = {
    getFilmCalender,
    getSuatChieu,
    getComboList,
    getRoomSeat,
    getTicketId,
    createBill
}