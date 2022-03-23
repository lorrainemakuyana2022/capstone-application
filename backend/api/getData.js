const db = require('../database/db')

function getData(req, res) {

    let info = { }

    //const sql = 'SELECT class_time, class FROM states'
    const sql = 'SELECT class_time, class FROM states ORDER BY ID DESC LIMIT 6;'
    
    db.query(sql, (err, result) => {

        if(err) {
            console.log(err)
            return res.status(500).send('Something is fundamentally wrong with the application... ')
        }

        info.data = result
        
        res.send(info)

    })
}

module.exports = getData
