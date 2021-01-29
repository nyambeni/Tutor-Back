var mysql = require('mysql');
var express = require('express');
var session = require('express-session');
const jwt = require('jsonwebtoken')
const router = express.Router();
const bodyParser = require('body-parser');
const mysqlConn= require('../config/conn');

router.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
router.use(bodyParser.urlencoded({extended : true}));
router.use(bodyParser.json());

router.post('/_login', function(request, response,error) {
	let user = request.body.email;
	let user_pass = request.body.password;
	var userType = request.body.userType;
	

	if (!user || !user_pass ){
		 return response.send({ msg: 'Please enter all fields' });
	}
	if (user_pass.length < 6) {
		return response.send({ msg: 'Password must be at least 6 characters' });
	  }
	if ( user && user_pass) 
	{
		if(userType == 1 )
		{				
		mysqlConn.query('SELECT * FROM lecturer  WHERE email=? AND password=?', [user,user_pass], function(error, results, fields){		
			if (results.length>0) { 
				jwt.sign({user}, 'secretkey', { expiresIn: '30s' }, (err, token) => {
					response.json({
						token,
					 user:results
					});
				  });	
			} 
			else {
				response.send('Incorrect  user_id and/or user_pass...!');
				console.log('incorrect pass or username.....');
				response.end();
			}			 	
		});
		}
		else if(userType == 2 ){
			mysqlConn.query('SELECT * FROM students WHERE email = ? AND password = ?', [user , user_pass], function(error, results, fields) {
				if (results.length>0) {
					jwt.sign({user}, 'secretkey', { expiresIn: '30s' }, (err, token) => {
						response.json({
							token,
						 user:results
						});
					  });

				} else {
					response.send('Incorrect  user_id and/or user_pass...!');
					console.log('incorrect pass or username.....');
					response.end();
				}	
            })
		}else {
				mysqlConn.query('SELECT * FROM admin WHERE email = ? AND password = ?', [user , user_pass], function(error, results, fields) {
				if (results.length>0) 
				{
					jwt.sign({user}, 'secretkey', { expiresIn: '30s' }, (err, token) => {
						response.json({
							token,
						 user:results
						});
					  });		
				} else {
					response.send('Incorrect  user_id and/or user_pass...!');
					console.log('incorrect pass or username.....');
					response.end();
				}})
			}};
});
router.get('/logout', (req, res) => {
	req.logout();
	req.flash('success_msg', 'You are logged out');
	res.redirect('/login');
  });



 

module.exports = router;