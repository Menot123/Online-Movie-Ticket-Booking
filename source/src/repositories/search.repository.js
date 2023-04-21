const dbClient = require('./db_client');

async function searchFilms(keyword) {
    const record = await dbClient.query(
        `SELECT * FROM phim WHERE tenphim LIKE '%${keyword}%'`
    );
    return record;  
};

module.exports = {
    searchFilms
}