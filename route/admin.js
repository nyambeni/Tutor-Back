const mysql = require('mysql');
const express =require('express');
const router = express.Router();
const mysqlConn= require('../config/conn');


//add student
router.post('/addStudent', function (req, res) {
    let post =({studentNumber:req.body.studentNumber,name:req.body.name,surname:req.body.surname,
    email:req.body.email,address:req.body.address,
    password:req.body.password,contacts:req.body.contacts});
        
     if (!name ||!email ) {
       return res.status(400).send({ message: 'Please provide full information' });
     }
    
        mysqlConn.query('INSERT INTO students SET ?',[post],function (error, results, fields) {
            if (error) throw error;
            return res.send({ data: results, message: 'student  inserted successfuly.' });
        });
    }); 


//update student

router.put('/updateStudent', function (req, res) {
    let studentNumber=req.body.studentNumber;
   let post = {firstName:req.body.firstName,surname:req.body.surname,email:req.body.email,contacts:req.body.contacts,address:req.body.address,password:req.body.password};
    
     if (!post) {
       return res.status(400).send({ error: user, message: 'Please provide all information' });
     }
    
        mysqlConn.query('UPDATE students SET ? WHERE studentNumber=?' ,[post,studentNumber],function (error, results, fields) {
            if (error) throw error;
            return res.send({ data: results, message: 'student  updated successfuly.' });
        });
    });

//get all students
router.get('/students', function (req, res) {
    mysqlConn.query('SELECT * FROM students' ,function (error, results, fields) {
        if (error) throw error;
        return res.send({ status:200, data: results, message: 'students list.' });
    });
});
// Retrieve student by id 
router.get('/students/:id', function (req, res) {
    let studentNumber = {studentNumber:req.body.studentNumber};
     
    mysqlConn.query('SELECT * FROM students WHERE studentNumber = ?', [studentNumber], (error, result) => {
            if (error) throw error;
     
            res.send(result);
        });
    });
//  Delete student
router.delete('/deleteStudent/:id', function (req, res) {
    let studentNumber = {studentNumber:req.body.studentNumber};
    if (!studentNumber) {
        return res.status(400).send({ message: 'Please provide user_id' });
    }
    mysqlConn.query('DELETE FROM students WHERE studentNumber =?', [studentNumber], function (error, results, fields) {
        if (error) throw error;
        return res.send({ data: results, message: 'student has been deleted successfully.' });
    });
    }); 


module.exports=router;
