const dbClient = require('./db_client');

async function getActor(madienvien) {
    const record = await dbClient.query(
        `SELECT * FROM DIENVIEN WHERE madienvien = '${madienvien}' `
    );
    return record;  
};

module.exports = {
    getActor,
}