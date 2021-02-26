CREATE TABLE IF NOT EXISTS `tblDrivers` (
  `DriverID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `ShiftTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DriverID`),
  KEY `DriverID` (`DriverID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


CREATE TABLE IF NOT EXISTS `tblOrderStats` (
  `OrderStatsID` int(11) NOT NULL AUTO_INCREMENT,
  `DriverID` int(11) NOT NULL,
  `ParcelsDelivered` int(30) DEFAULT NULL,
  `Dates` date DEFAULT NULL,
  PRIMARY KEY (`OrderStatsID`),
  KEY `OrderStatsID` (`OrderStatsID`),
  KEY `DriverID` (`DriverID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `tblVans` (
  `VanID` int(10) NOT NULL AUTO_INCREMENT,
  `RegPlate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`VanID`),
  KEY `VanID` (`VanID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


CREATE TABLE IF NOT EXISTS `tblLocations` (
  `LocationID` int(10) NOT NULL AUTO_INCREMENT,
  `DriverID` int(11) NOT NULL,
  `VanID` int(10) NOT NULL,
  `Street` varchar(30) DEFAULT NULL,
  `Postcode` varchar(20) DEFAULT NULL,
  `Timing` datetime DEFAULT NULL,
  PRIMARY KEY (`LocationID`),
  KEY `LocationID` (`LocationID`),
  KEY `DriverID` (`DriverID`),
  KEY `VanID` (`VanID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;