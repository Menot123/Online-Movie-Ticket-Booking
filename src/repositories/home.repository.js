const dbClient = require('./db_client');

async function getListNotifications() {
    const record = await dbClient.query(
        `SELECT * FROM tintuc WHERE category = "binhluan" `
    );
    return record;
};

async function getBlogs() {
    const record = await dbClient.query(
        `SELECT * FROM tintuc WHERE category = "blog" `
    );
    return record;
};

async function getShortFilms() {
    const record = await dbClient.query(
        `SELECT * FROM PHIM `
    );
    return record;
};

module.exports = {
    getListNotifications,
    getBlogs,
    getShortFilms,
}