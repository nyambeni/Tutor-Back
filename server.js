const express = require('express')
const bodyParser = require('body-parser')
var cors = require('cors')

const PORT = 1000
const app = express()

app.use(bodyParser.json())
app.use(cors()) 

app.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'POST,GET,DELETE,OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type,Accept');
    res.setHeader('Access-Control-Allow-Credentials', true);
    next();
  });

  //testing server
  app.get('/', function(req, res){
    res.send('Hello from server')
  })

  //APIs routes

  app.use('/', require('./route/login')); 
  app.use('/', require('./route/admin'));
  app.use('/', require('./route/student'));





app.listen(PORT, function(){
    console.log('Tutor system Server running on localhost: ' + PORT)
})