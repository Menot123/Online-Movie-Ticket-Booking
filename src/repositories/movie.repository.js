const dbClient = require('./db_client');

async function getMovie() {
    const record = await dbClient.query(
        `SELECT * FROM PHIM`
    );
    return record;
};

module.exports = {
    getMovie
}