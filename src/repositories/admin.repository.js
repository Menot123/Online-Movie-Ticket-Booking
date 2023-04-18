const dbClient = require('./db_client');

async function manageAccounts(username,phone,password) {
    const record = await dbClient.query(
        `INSERT INTO user(sodienthoai, matkhau, hoten) VALUES (?,?,?) `, [phone, password, username]
    );
    return record.insertId;
};

async function getAccounts() {
    const record = await dbClient.query(
        `SELECT * FROM USER where role != 'admin'`
    );
    return record;
};

async function handleDelete(id) {
    const record = await dbClient.query(
        `DELETE FROM USER WHERE userid = ?`,[id]
    );
    return record.affectedRows;
};

async function getInfo(id) {
    const record = await dbClient.query(
        `Select * from user where userid = ?`,[id]
    );
    return record;
};

async function updateInfo(id, phone,pass) {
    var record = null
    if(phone && pass == undefined) {
        record = await dbClient.query(
            `update user set sodienthoai = ? where userid = ?`,[phone, id]
        );
    } else if(pass && phone == undefined) {
        record = await dbClient.query(
            `update user set matkhau = ? where userid = ?`,[pass,id]
        );
    } else {
        record = await dbClient.query(
            `update user set sodienthoai = ?,  matkhau = ? where userid = ?`,[phone, pass ,id]
        );
    }
    return record.affectedRows;
};

module.exports = {
    manageAccounts, getAccounts,handleDelete,getInfo,updateInfo
}
