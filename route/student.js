const express = require('express');
const route=express.Router();
const mysqlConn= require('../config/conn');
const nodemailer = require('nodemailer');
const bcrypt = require('bcryptjs')

//Register student
route.post('/register', (req, res) => {
  
  let [{fname, lname, gender, email, contactno, password, subjcode}] = req.body
  let userType = 2

  mysqlConn.query('SELECT email FROM students WHERE email = ?', [email], async(err, results) => {
     if(err){
      throw err
     }
     if(results.length > 0)
     {
      return res.send({message: 'Email already exist'});
     } 

     switch (subjcode) {
     case 'TECHNICAL PROGRAMING':
      subjcode = "TPG111T";
     break;
     case 'MATHEMATICS':
      subjcode = "MT201";
      break;
     case 'ACCOUNTING':
      subjcode = "ACC10AT";
    break;
    case 'MICROSOFT BASICS':
      subjcode = "MB100A";
    break;
    case 'MT201':
      subjcode = "TPG111T";
    break;
  default:
    subjcode = "GD10BT"
}
     if (!fname || !lname || !gender || !email || !contactno || !password){
       res.send({ msg: 'Please enter all fields' });
       res.end();
    }

     let hashedPassword = await bcrypt.hash(password, 10);
     console.log(hashedPassword);
  
  mysqlConn.query('INSERT INTO students SET fname = ?, lname = ?, userType = ?, gender = ?, email = ?, contactno = ?, password = ?, subjcode = ?', [fname, lname, userType, gender, email, contactno, hashedPassword, subjcode], (err, results, fields) => {
    if(err){
      throw err
    }else{
      console.log(req.body);
      res.send({msg: 'User registered'});  
    }
  })//

  });

  
})

//students apdate his details    
route.put('/student/update', function(req, res) {

    const {fname, lname, gender, email, contactno, student_id} = req.body

    mysqlConn.query('UPDATE students SET fname = ?, lname = ?, gender = ?, email = ?, contactno = ? WHERE student_id = ?', [fname, lname, gender, email, contactno, student_id], (err, rows) =>{

      if(!err){
        res.send('Details updated.') 
      }else{
        console.log(err)
      }
    })
    console.log(req.body)
  
})

module.exports=route;