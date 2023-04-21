const dbClient = require('./db_client');

async function getDirector(madaodien) {
    const record = await dbClient.query(
        `SELECT * FROM DAODIEN WHERE madaodien = '${madaodien}' `
    );
    return record;  
};

async function get4Director() {
    const record = await dbClient.query(
        `SELECT * FROM DAODIEN ORDER BY RAND() LIMIT 3;`
    );
    return record;  
};


module.exports = {
    getDirector, get4Director
}