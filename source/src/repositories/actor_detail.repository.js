const dbClient = require('./db_client');

async function getActor(madienvien) {
    const record = await dbClient.query(
        `SELECT * FROM DIENVIEN WHERE madienvien = '${madienvien}' `
    );
    return record;  
};

async function get4Actor() {
    const record = await dbClient.query(
        `SELECT * FROM DIENVIEN ORDER BY RAND() LIMIT 3;`
    );
    return record;  
};

module.exports = {
    getActor, get4Actor
}