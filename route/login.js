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

router.post('/student/login', function(req, response,err) {

	let [{email, password}] = req.body
	//let email = request.body.email;
	//let password = request.body.password;

    if(!email || !password ){
		return response.send({ msg: 'Please enter all fields'});
	}
	/*if (password.length < 6) {
		return response.send({ msg: 'Password must be at least 6 characters' });
	}*/

	if ( email && password) {
		mysqlConn.query('SELECT * FROM students WHERE email = ? AND password = ?', [email , password], function(err, results, fields) {
			if (results.length>0) {
				jwt.sign({email}, 'secretkey', { expiresIn: '30s' }, (err, token) => {
					response.json({
						token,
						email:results
					});
				  });

			} else {
				response.send('email or password is incorrect');
				console.log('email or password is incorrect');
				response.end();
			}	
		})
	}
	
});

router.post('/admin/login', function(req, response,err) {

	let [{email, password}] = req.body

    if(!email || !password ){
		return response.send({ msg: 'Please enter all fields'});
	}
	if (password.length < 6) {
		return response.send({ msg: 'Password must be at least 6 characters' });
	}
	if ( email && password) {
		mysqlConn.query('SELECT * FROM admin WHERE email = ? AND password = ?', [email , password], function(err, results, fields) {
			if (results.length>0) {
				jwt.sign({email}, 'secretkey', { expiresIn: '30s' }, (err, token) => {
					response.json({
						token,
						email:results
					});
				  });

			} else {
				response.send('Email or password is incorrect');
				console.log('Email or password is incorrect');
				response.end();
			}	
		})
	}
	
});

router.get('/logout', (req, res) => {
	req.logout();
	req.flash('success_msg', 'You are logged out');
	res.redirect('/login');
  });


module.exports = router;