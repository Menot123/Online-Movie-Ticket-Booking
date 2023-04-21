const dbClient = require('./db_client');

async function getActor() {
    const record = await dbClient.query(
        `SELECT * FROM DIENVIEN`
    );
    return record;
};

module.exports = {
    getActor
}