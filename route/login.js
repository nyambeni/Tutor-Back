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

router.post('/Stu_login', function(request, response,error) {
	let user = request.body.contactno;
	let user_pass = request.body.password;

    if(!user || !user_pass ){
		return response.send({ msg: 'Please enter all fields'});
	}
	if (user_pass.length < 6) {
		return response.send({ msg: 'Password must be at least 6 characters' });
	}
	if (user.length < 10) {
		return response.send({ msg: 'Contact number must be at least 10 characters' });
	}
	if ( user && user_pass) {
		mysqlConn.query('SELECT * FROM students WHERE contactno = ? AND password = ?', [user , user_pass], function(err, results, fields) {
			if (results.length>0) {
				jwt.sign({user}, 'secretkey', { expiresIn: '30s' }, (err, token) => {
					response.json({
						token,
					 user:results
					});
				  });

			} else {
				response.send('Contact number or password is incorrect');
				console.log('Contact number or password is incorrect');
				response.end();
			}	
		})
	}
	
});

router.post('/admin_login', function(request, response,error) {
	let user = request.body.contactno;
	let user_pass = request.body.password;

    if(!user || !user_pass ){
		return response.send({ msg: 'Please enter all fields'});
	}
	if (user_pass.length < 6) {
		return response.send({ msg: 'Password must be at least 6 characters' });
	}
	if (user.length < 10) {
		return response.send({ msg: 'Contact number must be at least 10 characters' });
	}
	if ( user && user_pass) {
		mysqlConn.query('SELECT * FROM admin WHERE contactno = ? AND password = ?', [user , user_pass], function(err, results, fields) {
			if (results.length>0) {
				jwt.sign({user}, 'secretkey', { expiresIn: '30s' }, (err, token) => {
					response.json({
						token,
					 user:results
					});
				  });

			} else {
				response.send('Contact number or password is incorrect');
				console.log('Contact number or password is incorrect');
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