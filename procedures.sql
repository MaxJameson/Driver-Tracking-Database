DELIMITER //

CREATE PROCEDURE findLocation (chosenVan int, chosenDate date)
	BEGIN
		SELECT tblDrivers.DriverID, tblDrivers.FirstName, tblDrivers.LastName, tblLocations.Postcode,tblLocations.street, tblLocations.Timing, tblVans.VanID, tblVans.RegPlate FROM tblDrivers
		RIGHT JOIN tblLocations ON tblDrivers.DriverID = tblLocations.DriverID
		LEFT JOIN tblVans ON tblLocations.VanID = tblVans.VanID
		WHERE tblLocations.VanID = chosenVan
		AND DATE(tblLocations.Timing) = chosenDate;
	END//
	
CREATE PROCEDURE showOrders (chosenDriver int, chosenDate date)
	BEGIN
		SELECT tblDrivers.DriverID, tblDrivers.FirstName, tblDrivers.LastName, tblOrderStats.ParcelsDelivered, tblOrderStats.Dates FROM tblOrderStats
		RIGHT JOIN tblDrivers ON tblOrderStats.DriverID = tblDrivers.DriverID
		WHERE tblDrivers.DriverID = chosenDriver
		AND tblOrderStats.Dates = chosenDate;
	END//
	
	
CREATE PROCEDURE showDrivers()
	BEGIN
		SELECT DriverID, FirstName, LastName FROM tblDrivers;
	END//
	
	
CREATE PROCEDURE showMorningDrivers()
	BEGIN
		SELECT * FROM tblDrivers
		WHERE ShiftTime = 'Morning';
	END//

DELIMITER ;