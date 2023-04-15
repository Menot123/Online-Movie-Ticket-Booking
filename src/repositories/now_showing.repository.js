const dbClient = require('./db_client');

async function getNowShowingFilm() {
    const record = await dbClient.query(
        `SELECT * FROM PHIM WHERE trangthai = "dangchieu" `
    );
    return record;
};

module.exports = {
    getNowShowingFilm,
}