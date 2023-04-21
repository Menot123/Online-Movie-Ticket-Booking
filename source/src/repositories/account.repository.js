const dbClient = require('./db_client');

async function registerAccount(username,phone,password) {
    const record = await dbClient.query(
        `INSERT INTO user(sodienthoai, matkhau, hoten) VALUES (?,?,?) `, [phone, password, username]
    );
    return record.insertId;
};

async function handleLogin(phone, password) {
    const record = await dbClient.query(
        `SELECT * FROM user WHERE sodienthoai = ? AND matkhau = ?`,
        [phone, password]
    );
    
    if (record.length > 0) {
        return record[0]
    } else {
        return false
    }
};

module.exports = {
     registerAccount, handleLogin
}
