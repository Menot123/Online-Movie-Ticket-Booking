const dbClient = require('./db_client');

async function getReviewDetail(matin) {
    const record = await dbClient.query(
        `SELECT * FROM TINTUC WHERE matin = '${matin}'`
    );
    return record;
};

async function getRelatedPosts() {
    const record = await dbClient.query(
        `SELECT * FROM TINTUC WHERE category = "binhluan"`
    );
    return record;
};


module.exports = {
    getReviewDetail,
    getRelatedPosts
}