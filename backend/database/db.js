const mysql = require('mysql'); 

const db = mysql.createConnection({
    host: 'localhost', 
    user: 'root', 
    password: '12345678', 
    database: 'classifier'
}); 

db.connect((err) => {
    if (err){
        console.log(err)
    } else {
        console.log('Database Connected...')
    }
});

module.exports = db;