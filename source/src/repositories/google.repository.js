const dbClient = require('./db_client');

async function signUpWithGoogle(username,email) {
    const record = await dbClient.query(
        `INSERT INTO user( email, matkhau, hoten) VALUES (?,?,?) `, [email, "google", username]
    );
    return record.insertId;
};

async function checkAccount(email) {
    const record = await dbClient.query(
        `SELECT * FROM user WHERE email = ? `,
        [email]
    );
    return record;
};

module.exports = {
    signUpWithGoogle, checkAccount
}
