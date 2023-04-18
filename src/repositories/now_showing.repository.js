const dbClient = require('./db_client');

async function getNowShowingFilm() {
    const record = await dbClient.query(
        `SELECT * FROM PHIM WHERE trangthai = "dangchieu" `
    );
    return record;
};
async function get4NowShowingFilm() {
    const record = await dbClient.query(
        `SELECT * FROM PHIM WHERE trangthai = "dangchieu" ORDER BY RAND() LIMIT 4;`
    );
    return record;
};

module.exports = {
    getNowShowingFilm,
    get4NowShowingFilm
}