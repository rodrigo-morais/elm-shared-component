const express = require('express')

const app = express()
const path = require('path');

app.use(express.static(path.join(__dirname + '/')));

app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

app.listen(process.env.SERVER_PORT || 8000, () => {
  console.log('serving in port: ' + (process.env.SERVER_PORT || 8000))
})
