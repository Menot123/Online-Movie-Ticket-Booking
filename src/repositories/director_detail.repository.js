const dbClient = require('./db_client');

async function getDirector(madaodien) {
    const record = await dbClient.query(
        `SELECT * FROM DAODIEN WHERE madaodien = '${madaodien}' `
    );
    return record;  
};

module.exports = {
    getDirector,
}