const dbClient = require('./db_client');

async function getCommingSoonFilm() {
    const record = await dbClient.query(
        `SELECT * FROM PHIM WHERE trangthai = "sapchieu" `
    );
    return record;
};

module.exports = {
    getCommingSoonFilm,
}