ALTER TABLE `tblLocations`
  ADD CONSTRAINT FOREIGN KEY (`DriverID`) REFERENCES `tblDrivers` (`DriverID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT FOREIGN KEY (`VanID`) REFERENCES `tblVans` (`VanID`) ON DELETE CASCADE ON UPDATE CASCADE;
  
ALTER TABLE `tblOrderStats`
  ADD CONSTRAINT FOREIGN KEY (`DriverID`) REFERENCES `tblDrivers` (`DriverID`) ON DELETE CASCADE ON UPDATE CASCADE;