const dbClient = require('./db_client');

async function getDiector() {
    const record = await dbClient.query(
        `SELECT * FROM DAODIEN`
    );
    return record;
};

module.exports = {
    getDiector
}