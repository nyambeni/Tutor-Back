CREATE TABLE students(
        student_id INT AUTO_INCREMENT PRIMARY KEY,
        userType INT(2),
        subjcode VARCHAR(10) NOT NULL,
        fname VARCHAR(30) NOT NULL,
        lname VARCHAR(30) NOT NULL,
        gender VARCHAR(15) NOT NULL,
        contactno VARCHAR(13) NOT NULL,
        email VARCHAR(50) NOT NULL,
        password VARCHAR(30) NOT NULL
        
);
CREATE TABLE subject(
       subjcode VARCHAR(5) PRIMARY KEY,
       subjname VARCHAR(20) NOT NULL
);

CREATE TABLE admin(
        adminid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        userType INT(2) NOT NULL,
        email VARCHAR(30) NOT NULL,
        password VARCHAR(30) NOT NULL        
);
INSERT INTO `subject` (`subjcode`, `subjname`) VALUES ('TPG111T', 'TECHNICAL PROGRAMING'), ('MT201T', 'MATHEMATICS'), ('ACC10AT', 'ACCOUNTING'), ('MB100A', 'MICROSOFT BASICS'), ('GD10BT', 'GRAPHIC DESIGN');
INSERT INTO `admin` (`adminid`, `userType`, `email`, `password`) VALUES (NULL, '1', 'admin@gmail.com', '@adminpassword');
