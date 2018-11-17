// =============================
// Database Connection:
const pgp = require('pg-promise')({
    query: e => {
        console.log('QUERY: ', e.query );
        if (e.params) {
            console.log ('PARAMS: ', e.params);
        }
    }
});

module.exports = db;