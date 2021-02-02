const mysql = require('mysql');
const express = require('express');


const mysqlConn = mysql.createConnection({

  host:'localhost',
  user:'root',
  password:'',
  database:'tutordb'

})


mysqlConn.connect((err)  =>{

if(!err)

console.log('database connected');


else


console.log('db connection failed');


});


module.exports =mysqlConn;
