console.clear()

const express = require('express')
const cors = require('cors');
const db = require('./database/db')

const getData = require('./api/getData')
const sendData = require('./api/sendData')

const app = express()

app.use(express.json())

app.use(cors()); 

app.get('/api/get-data', getData)

app.post('/api/send-data', sendData)

const port = 8080 

app.listen(port, () => {
    console.log(`Listening on port ${port}`)
})

console.clear()