-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 08:03 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matimba`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `adminName` text NOT NULL,
  `adminSurname` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminSurname`, `password`, `email`) VALUES
(1, 'Mpho Given', 'Nyambeni', '123456789', 'sandile@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `approved`
--

CREATE TABLE `approved` (
  `artID` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contacts` text NOT NULL,
  `catID` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address2` text NOT NULL,
  `confirmPassword` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approved`
--

INSERT INTO `approved` (`artID`, `firstName`, `surname`, `email`, `contacts`, `catID`, `password`, `address2`, `confirmPassword`, `address`, `status`, `reason`) VALUES
(2423, 'Matimba', 'baloyi', 'tukum.baloyi@gmail.com', '0768009566', 2, '$2a$10$VrEzLaLk72R0UVbIcDcSR.kIEyidrfaskNQ/xM22FEDDP1lE64c3m', 'pretoria', '', 'sosha block L', 1, ''),
(2425, 'rea', 'rea', 'rea@yahoo.com', '8888888888', 3, '$2a$10$1UWsc4vcNiHgJp35DKl0cedCKL06k1Q0uurlc8l/u7LTwONKZKsD.', 'edfg 0000', '', '123 Soshanguve ', 0, ''),
(2426, 'kgotso', 'motloung', 'kgotso@gmail.com', '0715555555', 1, '$2a$10$rpHj6QgVtq8Jn2UDKRACOOoDXf/q03TBe7rbC8CM4Q/JGxidGA1RK', 'block l', '', '124 sosha', 1, ''),
(2427, 'Hilda', 'Hlophe', 'hlophe@gmail.com', '0792606815', 3, '$2a$10$MZVfaxpuctUV6FGMP6qz7uJIVLf4IS8ntla80Go2UfSyv3gdFIW6a', 'Durban 1234', '', 'new castle 2145', 1, ''),
(2428, 'ru', 'ru', 'ru@rocketmail.com', '7777777777', 1, '$2a$10$qLALCTir/9foiCTroepOs.jml3JLEVA7CSSWCKil2n8kF62nwNX6m', '65 gfhghjtrhjtr', '', '321 Gg street', 0, ''),
(2429, 'yu', 'yu', 'yu@gmail.com', '7777777777', 1, '$2a$10$Qn.yk68qXQTUxE4MI9v9B.DswG/Dx7JB9UX..KlQMdxiiu2MF32ri', '65 gfhghjtrhjtr', '', '321 Gg street', 0, ''),
(2437, 'MATIMBA', 'BALOYI', 'HALATA@GMAIL.COM', '0768009566', 3, '$2a$10$iwSMCZ/Gunm6.05Jjf/Yl.w1wMKhOivedKbESYuTUlyeDag1zMWo2', 'PRETORIA', '', 'SOSHA BLOCK l', 0, ''),
(2442, 'BALENI', 'HALATA', 'BALENIHALATA@GMAIL.COM', '0768009566', 1, '123456789', 'MALAMULELE', '', 'SOSHA2', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `artisan`
--

CREATE TABLE `artisan` (
  `artID` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contacts` text NOT NULL,
  `catID` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address2` text NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artisan`
--

INSERT INTO `artisan` (`artID`, `firstName`, `surname`, `email`, `contacts`, `catID`, `password`, `address2`, `address`, `status`, `reason`) VALUES
(2431, 'tlc', 'tlc', 'tlc@gmail.com', '7777777777', 1, '$2a$10$zFElQXoK8tSg0Rs1EYRCoevQyff9qqmSvSQyKuQW4dkzmM0i/Ie1W', '65 gfhghjtrhjtr', '321 Gg street', 0, ''),
(2432, 'groove ', 'theory', 'groovetheory@gmail.com', '7777777777', 1, '$2a$10$jReS3guONf7XunPUjfL.n.x0PxHhFrSkWfM/Vi90YT1MHVHuYvUgW', '65 gfhghjtrhjtr', '321 Gg street', 0, ''),
(2433, 'kim ', 'kim', 'kim@yahoo.com', '7777777777', 1, '$2a$10$P4r15ydK.ArbI6vKbUObtu3ex0/UldgsI7C25D5NF5Nw/udoJxv.q', '65 gfhghjtrhjtr', '321 Gg street', 0, ''),
(2434, 'ssss', 'ssss', 'ssss@rocketmail.com', '8888888888', 0, '123456789', 'block w', '123312 fdfg', 0, ''),
(2435, 'rand', 'dollar', 'dollar@yahoo.com', '5555555555', 4, '$2a$10$C4nooSbwiiSGh/236wXBRunZ0mBkM9IBtik/AAC5OlnjgMK0wqGOW', 'block w', '77 skheswa street', 0, ''),
(2436, 'east ', 'west', 'west@gmail.com', '0768009566', 5, '$2a$10$JXDrsUr.5hmzPpD0K5Eo3.OanSh6NsaoCTvtvsa7TsgIoKQYWgSEi', 'block w', '123 Soshanguve ', 0, ''),
(2437, 'Zanele', 'Thabethe', 'zanoh98@gmail.com', '0114481582', 0, '123456789', 'kio', 'ghghj', 0, ''),
(2440, 'mzet', 'Aletta', 'jmnm@gmail.com', '0155222564', 0, '123654789', 'sserdtrhj', 'ffghghj', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `categoryName`, `description`) VALUES
(1, 'Plumber', 'Plumbers install and repair pipes that supply water and gas to, as well as carry waste away from, homes and businesses. They also install plumbing fixtures such as bathtubs, sinks, and toilets, and appliances, including dishwashers and washing machines.'),
(2, 'Carpenter', 'Carpenters construct, erect, install, and repair structures and fixtures made from wood and other materials. Carpenters are involved in many different kinds of construction, from the building of highways and bridges to the installation of kitchen cabinets.'),
(3, 'Builder', 'Builders oversee, coordinate and work on the construction or repair of homes and other buildings. ... Builders usually work outdoors in industrial conditions as part of a construction team, and may be required to operate machinery.'),
(4, 'Technician', 'Technician is a person who repairs and maintains computers and servers. The technician\'s responsibilities may extend to include building or configuring new hardware, installing and updating software packages, and creating and maintaining computer networks.'),
(5, 'Electrician', 'Electricians install and maintain all of the electrical and power systems for our homes, businesses, and factories. They install and maintain the wiring and control equipment through which electricity flows. ... Electricians generally focus on either construction or maintenance, although many do both.');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contacts` int(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientID`, `name`, `surname`, `email`, `password`, `contacts`, `address`, `address2`, `status`) VALUES
(3, 'Matimba2', 'mwee', 'zanoMatimba@gmail.com', '123456789', 99999999, 'block vv', 'block v 225', 1),
(4, 'zinhle2', 'seema', 'nyam@gmail.com', '12345678', 125896398, '123 Soshanguve ', 'block w', 1),
(970, 'Matimba t', 'Baloyi', 'tukum.baloyi@gmail.com', 'matimbaha', 768009566, 'soshanguve', 'block g', 1),
(971, 'Nyambeni', 'Baloyi', 'tukum.b@gmail.com', 'matimbaha', 768009566, 'soshanguve', 'mabopane', 1),
(972, 'Mandisa', 'mhlungu', 'mandisa@gmail.com', 'Mandis', 768009577, 'soshanguve', 'block vv', 1),
(999, 'phila', 'mbatha', 'json22@gmail.com', '123456789', 715555789, '123 sosha', 'block l', 1),
(1000, 'phila', 'seema', 'phila@gmail.com', '852963', 715555555, '123 sosha', 'block l', 1),
(1001, 'phila', 'dada', 'phila22@gmail.com', '123456789', 715555789, '124 sosha', 'block l', 1),
(1002, 'nothando', 'seema', 'philaHHSGGSGFS@gmail.com', '123564789', 715555789, '123 sosha', 'nbvbm', 0),
(1004, 'thando', 'mugabe', 'nyam23@gmail.com', '123456789', 715555789, '123 sosha', 'block l', 0),
(1005, 'nothando', 'moyo', 'json52@gmail.com', '123456789', 715555555, '123 sosha', 'qwe', 1),
(1006, 'nothando', 'placeholder', 'json23@gmail.com', '123456789', 715555555, '123 sosha', 'block l', 1),
(1007, 'phila', 'placeholder', 'phila25@gmail.com', '123546789', 715555555, '124 sosha', 'block l', 1),
(1008, 'json', 'placeholder', 'json44@gmail.com', '123546789', 715555555, '123 sosha', 'block l', 1),
(1009, 'phila', 'placeholder', 'json1@gmail.com', '123456879', 715555789, '123 sosha', 'block l', 1),
(1010, 'john', 'brown', 'phila212@gmail.com', '123456789', 891234568, 'sosha', 'block k', 0),
(1011, 'Alitha', 'Hilda', 'hilda@gmail.com', '0123456789', 792606815, '3125 Brits', '3157 canal Village', 0),
(1012, 'zanele', 'thabethe', 'zaaa@gmail.com', '123456789', 123456789, 'qefyhjyubv', 'btsxrdg', 0),
(1014, 'thembi', 'zwane', 'thembi@gmail.com', '12345678', 123456789, 'b hjsuij', 'jighnu', 0),
(1015, '', 'placeholder', 'zimba@gmail.com', '123456789', 715555555, '123 sosha', 'block l', 0),
(1016, '', 'leadership', 'Calvin@gmail.com', '123456789', 715555555, '123 sosha', 'block l', 0),
(1017, 'djfkfsfgsf', 'fbgdfghdfh', 'sg@gmail.com', '15647646', 12345678, 'efgrbhrnhrnhr', 'egeh', 0),
(1018, 'tkay', 'timbi', 'timbitimbi@gmail.com', '123456789', 715555555, '123 sosha', 'block l', 0),
(1019, 'mzet', 'kheswa', 'skheswa00@gmail.com', '111111111', 0, '123 ggggg ', 'eefef 21', 0),
(1020, '', 'qwerty', 'qwerty@gmail.com', '123456789', 715555555, '123 sosha', 'block l', 0),
(1021, '', 'dollar', 'rand@gmail.com', '123456789', 1111111111, '123 Soshanguve ', 'block w', 0),
(1022, '', 'DD', 'DD@GMAIL.COM', '123456789', 768009566, 'SOSHA', 'PRETIORIA', 0);

-- --------------------------------------------------------

--
-- Table structure for table `declined`
--

CREATE TABLE `declined` (
  `artID` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contacts` text NOT NULL,
  `catID` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address2` text NOT NULL,
  `confirmPassword` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `declined`
--

INSERT INTO `declined` (`artID`, `firstName`, `surname`, `email`, `contacts`, `catID`, `password`, `address2`, `confirmPassword`, `address`, `status`, `reason`) VALUES
(2417, 'Aletta', 'Rethabile', 'ttt@gmail.com', '5655555665625', 1, '$2a$10$ZUyZ5y8GnCHPCH8CAt5etOUXST0/LDJmM0xyU7CkF5RxMFE/OJWV6', 'ddcddwdc 0002', '', '555 dhyudhdhjd ', 0, ''),
(2424, 'kheswa', 'kheswa', 'kheswasandile@rocketmail.com', '5555556985', 1, '$2a$10$q/mc.aUEt09wND25Wbeph.o2o5Luag4.7L8H6IvqXokFCZLDom4La', 'block w', '', 'sk street pretoria', 0, ''),
(2430, 'swv', 'swv', 'swv@gmail.com', '7777777777', 1, '$2a$10$mB/LJbiZ8ypyB3nNsXV9hOFEwhdR.92ugnw7WZDypExgRtOB8papm', '65 gfhghjtrhjtr', '', '321 Gg street', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `fileID` int(11) NOT NULL,
  `fileName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fileID`, `fileName`) VALUES
(1, 'route\\upload\\pic-1570036086387.jpg'),
(2, 'images (1).jpg'),
(3, 'images (1).jpg'),
(4, 'images (1).jpg'),
(5, 'images (1).jpg'),
(6, 'images (1).jpg'),
(7, 'images (1).jpg'),
(8, 'images (1).jpg'),
(9, 'images (1).jpg'),
(10, 'images (1).jpg'),
(11, 'images (1).jpg'),
(12, 'images.jpg'),
(13, 'Coincidence_ I think not!.jpg'),
(14, 'Coincidence_ I think not!.jpg'),
(15, 'Coincidence_ I think not!.jpg'),
(16, 'Africa Painting Ethiopian Emperor Haile Selassie….jpg'),
(17, 'Africa Painting Ethiopian Emperor Haile Selassie….jpg'),
(18, 'Africa Painting Ethiopian Emperor Haile Selassie….jpg'),
(19, 'download.jpg'),
(20, 'download.jpg'),
(21, 'download.jpg'),
(22, 'download.jpg'),
(23, 'download.jpg'),
(24, 'download.jpg'),
(25, 'download.jpg'),
(26, 'download.jpg'),
(27, 'download.jpg'),
(28, 'download.jpg'),
(29, 'download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `job_poster`
--

CREATE TABLE `job_poster` (
  `job_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `job_heading` text NOT NULL,
  `category` int(12) NOT NULL,
  `email` text NOT NULL,
  `contacts` int(10) NOT NULL,
  `location` text NOT NULL,
  `image` text NOT NULL,
  `full_description` text NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_poster`
--

INSERT INTO `job_poster` (`job_id`, `name`, `surname`, `job_heading`, `category`, `email`, `contacts`, `location`, `image`, `full_description`, `status`) VALUES
(1, 'mphos', 'nyamben', 'leaking toilet', 1, 'nyambeni@gmail.com', 79415, 'soshanguve block M', 'route\\upload\\pic-1570036086387.jpg', 'My toilet is leaking and when I flush, water comes back and its blocking us from using the tap water because of the leaking pipe.I am looking for a plumber who is fully qualified to come and fix my toilet.my house is smelling like hell and i need help asap.Those who are trying to scam/rob people saying they know the job whereas they know nothing.', 1),
(2, 'tomas', 'chauke', 'Plasma DISPLAYMENT', 4, 'TOM@GMAIL.COM', 608975446, 'SOSHA BLOCK V', 'route\\upload\\pic-1570036086387.jpg', 'MY TV is no longer showing pictures but plays the sound only.my house is smelling like hell and i need help asap.Those who are trying to scam/rob people saying they know the job whereas they know nothing', 1),
(3, 'alex', 'stevens', 'extra room', 3, 'alex@gmail.com', 158523654, 'block K SOSHANGUVE', 'route\\upload\\pic-1570036086387.jpg', 'I JUST NEED A NEW ROOM OUTSIDE THE BIG HOUSE.my house is smelling like hell and i need help asap.Those who are trying to scam/rob people saying they know the job whereas they know nothing.', 1),
(4, 'Percy', 'Mohale', 'kitchen built-in ', 2, 'percy@gmail.com', 60897789, 'soshanguve block x 321 mbidi street', 'route\\upload\\pic-1570036086387.jpg', 'I am looking for a carpenter who is available to help me build up my kitchen unit asap.its a very big kitchen and I am looking for a professional carpenter who went to school for it.I am no looking for chance takers who are going around the world robbing people and run away with their money then boom. kitchen unit is broken or doors are not working anymore. ', 1),
(5, 'Judge', 'Berlin', 'electrician', 5, 'bjudge@gmail.com', 738826054, 'soshanguve LKK 123 SOLAHNA TARVEN', '', 'I have been struggling with my store wiring,and i am afraid one day it will bring a very serious problem to my business.i am here looking for someone who is familiar with electricity,wiring and cabling to come and fix these mess that was created by nyaupe boys.', 1),
(6, 'mpho', 'nyambeni', 'plumbing', 1, 'mpho@gmail.com', 738556547, 'soshanguve vv', '', 'i need a plumber who is so powerful in plumbing.if you smake weed is an advantage.Whether you use our website to compare plumbers in South Africa, or electricians, Hellopeter.com helps you review, compare and rate specialist service providers quickly and simply online. You can write plumber company reviews for free, browse electrician company reviews to see what else has been said, or even comment on reviews to have your say.', 0),
(7, 'boss', 'kgomotso', 'icep air conditioner.', 4, 'masekocp@tut.ac.za', 125478987, 'Aubrey Matlala Soshanguve TUT', '', 'The air conditioner in the second office is leaking, when it changes the mode to fan it leaks. ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msgID` int(11) NOT NULL,
  `msg` text NOT NULL,
  `clientID` int(11) NOT NULL,
  `catID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgID`, `msg`, `clientID`, `catID`) VALUES
(1, 'ASDASDASDAAADA', 1, 0),
(5, 'alleta', 0, 0),
(6, 'alleta', 3, 0),
(7, 'alleta', 3, 0),
(8, 'alleta', 0, 0),
(9, 'allettyhudfgdfgdhgdghgfhhdgdhgfhdfghfdha', 0, 0),
(10, 'HELLO,I hope you are doing well.Come and fix my toilet on monday', 0, 0),
(11, 'HELLO,I hope you are doing well.Come and fix my toilet on monday', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `approved`
--
ALTER TABLE `approved`
  ADD PRIMARY KEY (`artID`),
  ADD UNIQUE KEY `artID` (`artID`),
  ADD KEY `catID` (`catID`),
  ADD KEY `artID_2` (`artID`);

--
-- Indexes for table `artisan`
--
ALTER TABLE `artisan`
  ADD PRIMARY KEY (`artID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `category` (`catID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `declined`
--
ALTER TABLE `declined`
  ADD PRIMARY KEY (`artID`),
  ADD UNIQUE KEY `artID` (`artID`),
  ADD KEY `catID` (`catID`),
  ADD KEY `artID_2` (`artID`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`fileID`);

--
-- Indexes for table `job_poster`
--
ALTER TABLE `job_poster`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `clientID` (`clientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `approved`
--
ALTER TABLE `approved`
  MODIFY `artID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2443;

--
-- AUTO_INCREMENT for table `artisan`
--
ALTER TABLE `artisan`
  MODIFY `artID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2441;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT for table `declined`
--
ALTER TABLE `declined`
  MODIFY `artID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2431;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `fileID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `job_poster`
--
ALTER TABLE `job_poster`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
