const dbClient = require('./db_client');

async function registerAccount(username,phone,password) {
    const record = await dbClient.query(
        `INSERT INTO account(phone, password, name) VALUES (?,?,?) `, [phone, password, username]
    );
    return record;
};

async function handleLogin(phone, password) {
    const record = await dbClient.query(
        `SELECT * FROM account WHERE phone = ? AND password = ?`,
        [phone, password]
    );
    if (record.length > 0) {
        return record[0].name
    } else {
        return false
    }
};

module.exports = {
     registerAccount, handleLogin
}
