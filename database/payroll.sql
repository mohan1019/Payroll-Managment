

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";



CREATE TABLE IF NOT EXISTS `deductions` (
  `deduction_id` int(5) NOT NULL AUTO_INCREMENT,
  `philhealth` int(20) NOT NULL,-->Health insurance<--
  `bir` int(20) NOT NULL,-->Sodexo<--
  `gsis` int(20) NOT NULL,-->NPS<--
  `pag_ibig` int(20) NOT NULL,-->Stocks<--
  `loans` int(20) NOT NULL,
  `none1` int(20),
  PRIMARY KEY (`deduction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



INSERT INTO `deductions` (`deduction_id`,`none1`, `philhealth`, `bir`, `gsis`, `pag_ibig`, `loans`) VALUES
(1, 0, 1, 2, 3, 4, 5);


CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `emp_type` varchar(20) NOT NULL,
  `division` varchar(30) NOT NULL,
  `deduction` int(10) NOT NULL,
  `overtime` int(10) NOT NULL,
  `bonus` int(10) NOT NULL,
  `salaray` int(30) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;



INSERT INTO `employee` (`emp_id`, `lname`, `fname`, `gender`, `emp_type`, `division`, `deduction`, `overtime`, `bonus`,'salaray') VALUES
(6, 'Sabit', 'Colins', 'Male', 'Regular', 'MIS', 0, 2, 2, 30000),
(8, 'Pasadas', 'Renz', 'Male', 'Job Order', 'Human Resource', 5, 1, 1,20000),
(9, 'Maglangit', 'Karen', 'Female', 'Casual', 'Admin', 1, 24, 10000, 10000);



CREATE TABLE IF NOT EXISTS `overtime` (
  `ot_id` int(10) NOT NULL AUTO_INCREMENT,
  `rate` int(10) NOT NULL,
  `none` int(2) NOT NULL,
  PRIMARY KEY (`ot_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;


INSERT INTO `overtime` (`ot_id`, `rate`, `none`) VALUES
(1, 10, 0);


CREATE TABLE IF NOT EXISTS `salary` (
  `salary_id` int(10) NOT NULL AUTO_INCREMENT,
  `salary_rate` int(10) NOT NULL,
  `none` int(10) NOT NULL,
  PRIMARY KEY (`salary_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



INSERT INTO `salary` (`salary_id`, `salary_rate`, `none`) VALUES
(1, 15000, 0);



CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;



INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'modi', 'qwerty'),
(2, 'admin', 'admin');
