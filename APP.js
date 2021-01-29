
const express = require('express');
const app = express();
var cors = require('cors')
const bodyParser = require('body-parser');

app.use(bodyParser.json());
app.use(cors())

app.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'POST,GET,DELETE,OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type,Accept');
    res.setHeader('Access-Control-Allow-Credentials', true);
    next();
  });
// api routes
 app.use('/', require('./route/student'));
 app.use('/', require('./route/lecturer'));
 app.use('/', require('./route/admin'));
 app.use('/', require('./route/login'));
 

// start server
const port = process.env.NODE_ENV === 'production' ? (process.env.PORT || 80) : 5000;
const server = app.listen(port, function () {
    console.log('Tutor System Server listening on port ' + port);
});
