const mysql = require('mysql');

const { promisify } = require('util');

const { database } = require('./keys');

const pool = mysql.createPool(database);

pool.getConnection((err, connection) =>{
    if(err){
        if(err.code === 'PROTOCOL_CONNECTION_LOST'){
            console.error('DATABASE CONNECTION WAS CLOSED');
        }
        else if(err.code === 'ER_CON_COUNT_ERROR'){
            console.error('DATABASE HAS TO MANY CONNECTIONS');
        }
        else if(err.code == 'ECONNREFUSED'){
            console.error('DATABASE CONNECTION WAS REFUSED');
        }

    }else if(connection){
        connection.release();
        
    }
    else{
        console.log('ERROR UKNOW');
    }
    console.log('DB is Connected');
    return;
});

//Promisify Pool Query
pool.query = promisify(pool.query);

module.exports = pool;


