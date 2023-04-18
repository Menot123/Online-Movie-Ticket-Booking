const dbClient = require('./db_client');

async function getBlogDetail(matin) {
    const record = await dbClient.query(
        `SELECT * FROM TINTUC WHERE matin = '${matin}'`
    );
    return record;
};

async function getRelatedPosts() {
    const record = await dbClient.query(
        `SELECT * FROM TINTUC WHERE category = "blog"`
    );
    return record;
};


module.exports = {
    getBlogDetail,
    getRelatedPosts
}