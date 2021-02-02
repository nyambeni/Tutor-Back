const mysql = require('mysql');
const express =require('express');
const router = express.Router();
const mysqlConn= require('../config/conn');


//get registered students list
router.get('/students', function (req, res) {
    mysqlConn.query('SELECT * FROM students' ,function (error, results, fields) {
        if (error) throw error;
        return res.send({ status:200, data: results, message: 'registered students list.' });
    });
});

//get student by id 
router.get('/students/:id', function (req, res) {
    let student_id = {student_id:req.body.student_id};
     
    mysqlConn.query('SELECT * FROM students WHERE student_id = ?', [student_id], (error, result) => {
            if (error) throw error;
     
            res.send(result);
        });
    });

//Delete student
router.delete('/delete/:student_id', (req, res) => {
  
    mysqlConn.query('DELETE FROM students WHERE student_id = ?', [req.params.student_id], (err, rows) =>{
        if(!err){
          res.send('Movie has been deleted.')
        }else{
          console.log(err)
        }
      })
  })


module.exports=router;