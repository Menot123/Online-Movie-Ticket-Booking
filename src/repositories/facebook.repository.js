const dbClient = require('./db_client');

async function signUpWithFacebook(username, password) {
    const record = await dbClient.query(
        `INSERT INTO user( matkhau, hoten) VALUES (?,?) `, [password, username]
    );
    return record.insertId;
};

async function checkAccount(id) {
    const record = await dbClient.query(
        `SELECT * FROM user WHERE matkhau = ? `,
        [id]
    );
    return record;
};

module.exports = {
    signUpWithFacebook, checkAccount
}
