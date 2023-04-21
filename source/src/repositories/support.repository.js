const dbClient = require('./db_client');

async function support(name, phone, subject, message) {
    const record = await dbClient.query(
        `INSERT INTO hotro(ten, sodienthoai, chude, noidung) VALUES (?,?,?,?) `, [name, phone, subject, message]
    );
    return record.insertId;
};

module.exports = {
    support
}
