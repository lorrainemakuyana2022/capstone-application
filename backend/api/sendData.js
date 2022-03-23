const db = require('../database/db')

function sendData(req, res) {

    if (!req.body.class) {
        return res.status(404).send('Class not found...')
    }

    const sql = `INSERT INTO states (id, class_time, class) VALUES (NULL, current_timestamp(), '${req.body.class}') `

    db.query(sql, (err, result) => {

        if(err) {
            console.log(err)
            return res.status(500).send('Something is fundamentally wrong with the application... ')
        }

        res.status(200).send('Data update successful')

    })
}

module.exports = sendData
