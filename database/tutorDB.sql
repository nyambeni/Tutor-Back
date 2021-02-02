CREATE TABLE students(
        student_id INT AUTO_INCREMENT PRIMARY KEY,
        fname VARCHAR(30) NOT NULL,
        lname VARCHAR(30) NOT NULL,
	gender VARCHAR(10),
        contactno INT(13) NOT NULL,
        password VARCHAR(30) NOT NULL     
);

CREATE TABLE student_subject(
       student_id INT NOT NULL,
       subjcode VARCHAR(5) NOT NULL
);

CREATE TABLE subject(
       subjcode VARCHAR(5) NOT NULL,
       subjname VARCHAR(20) NOT NULL
);

CREATE TABLE registration(
       regid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
       student_id INT NOT NULL
);

CREATE TABLE admin(
        adminid VARCHAR(30) NOT NULL,
        username VARCHAR(13) NOT NULL,
        password VARCHAR(30) NOT NULL        
);
INSERT INTO `subject` (`subjcode`, `subjname`) VALUES ('TPG111T', 'TECHNICAL PROGRAMING'), ('MT201T', 'MATHEMATICS'), ('ACC10AT', 'ACCOUNTING'), ('MB100A', 'MICROSOFT BASICS'), ('GD10BT', 'GRAPHIC DESIGN');
INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES ('1', '@admin', PASSWORD('@adminpassword'));



