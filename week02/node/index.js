const express = require('express')
const app = express()

const port = process.env.NODE_PORT

app.get('/', function (req, res) {
  res.send('This is a proxied node server!')
})

app.listen(port, function () {
  console.log(`Example app listening on port ${port}!`)
})
