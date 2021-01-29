const express = require('express');
const route=express.Router();
const mysqlConn= require('../config/conn');
const nodemailer = require('nodemailer');

//student register

route.post('/register', function (req, res) {

    let post = ({studentNumber:req.body.studentNumber,name:req.body.name,surname:req.body.surname,
        email:req.body.email,address:req.body.address,
        password:req.body.password,contacts:req.body.contacts});
    
        if (!post){
            res.send({ msg: 'Please enter all fields' });
            res.end();
        }
      
        var user = post;
    
        bcrypt.hash(user.password, 10, function(err, hash){
                if(err) console.log(err);
                user.password = hash;
                //alert(user.password); //shows hashed password

                mysqlConn.query("INSERT INTO studets SET ? ",[user], function (error, results, fields) {
                    if (error) throw error;
                    return res.send({status:200, data: results, message: 'New artisan has been created successfully.' });
                    });
                })
  
        var transporter = nodemailer.createTransport({
            service: 'gmail',
            auth: {
              user: 'nyambeni@icep.co.za',
              pass: '1993#04a19B'
            }
          });
          
          var mailOptions = {
            from: 'nyambeni@icep.co.za',
            to: post.email,
            subject: 'Tutoring System',
            text: 'You are successfuly registered to use Tutor'
          };
          
          transporter.sendMail(mailOptions, function(error, info){
            if (error) {
              console.log(error);
            } else {
              console.log('Email sent: ' + info.response);
            
            }
          });
});
//update student 
  route.post('/student/update', function (req, res) {
    let name=req.body.name;
    let email=req.body.email;
    let surname=req.body.surname;
    let studentNumber=req.body.studentNumber;
        
     if (!name ||!email ) {
       return res.status(400).send({ message: 'Please provide infor' });
     }
     
     
        mysqlConn.query('UPDATE students SET email=?, surname=?,  name=? WHERE studentNumber=?',[email,surname,name,studentNumber],function (error, results, fields) {
            if (error) throw error;
            return res.send({ data: results, message: 'client  updated successfuly.' });
        });
    });

module.exports=route;