CREATE TABLE `Users` (
  `User_ID` INT PRIMARY KEY,
  `First_Name` VARCHAR(30) NOT NULL,
  `Last_Name` VARCHAR(30) NOT NULL,
  `Username` VARCHAR(20) UNIQUE NOT NULL,
  `Password` VARCHAR(20) NOT NULL,
  `Email` VARCHAR(50) UNIQUE NOT NULL,
  `Date_of_Birth` DATE
);

CREATE TABLE `Payment_Transactions` (
  `Transaction_ID` INT PRIMARY KEY,
  `Transaction_Amount` INT,
  `Payment_Status` VARCHAR(20),
  `Transaction_Timestamp` DATETIME,
  `Payment_Method` VARCHAR(30),
  `Payor_ID` INT,
  FOREIGN KEY (`Payor_ID`) REFERENCES `Users`(`User_ID`)
);

CREATE TABLE `Bookings` (
  `Booking_ID` INT PRIMARY KEY,
  `Booker_ID` INT,
  `Trip_ID` INT,
  `Rental_ID` INT,
  `Reservation_ID` INT,
  `Transaction_ID` INT,
  `Total_Price` INT,
  `Booking_Status` VARCHAR(20),
  FOREIGN KEY (`Booker_ID`) REFERENCES `Users`(`User_ID`)
);

CREATE TABLE `Trips` (
  `Trip_ID` INT PRIMARY KEY,
  `Trip_Type` VARCHAR(20),
  `Trip_Price` INT,
  `Origin_City` VARCHAR(20),
  `Destination_City` VARCHAR(20),
  `Passenger_ID` INT,
  FOREIGN KEY (`Passenger_ID`) REFERENCES `Users`(`User_ID`)
);

CREATE TABLE `Flights` (
  `Flight_ID` INT PRIMARY KEY,
  `Flight_Name` VARCHAR(10),
  `Flight_Airline` VARCHAR(20),
  `Departure_City` VARCHAR(20),
  `Arrival_City` VARCHAR(20),
  `Departure_Time` DATETIME,
  `Flight_Price` INT,
  `Flight_Availability` BIT
);

CREATE TABLE `Trip_Flights` (
  `Trip_ID` INT,
  `Flight_ID` INT,
  PRIMARY KEY (`Trip_ID`, `Flight_ID`),
  FOREIGN KEY (`Trip_ID`) REFERENCES `Trips`(`Trip_ID`),
  FOREIGN KEY (`Flight_ID`) REFERENCES `Flights`(`Flight_ID`)
);

CREATE TABLE `Hotel_Reservations` (
  `Reservation_ID` INT PRIMARY KEY,
  `Reservation_Price` INT,
  `CheckIn_Date` DATE,
  `CheckOut_Date` DATE,
  `Guest_ID` INT,
  FOREIGN KEY (`Guest_ID`) REFERENCES `Users`(`User_ID`)
);

CREATE TABLE `Hotels` (
  `Hotel_ID` INT PRIMARY KEY,
  `Hotel_Name` VARCHAR(20),
  `Hotel_City` VARCHAR(20)
);

CREATE TABLE `Rooms` (
  `Room_ID` INT PRIMARY KEY,
  `Hotel_ID` INT,
  `Room_Number` INT,
  `Room_Type` VARCHAR(20),
  `Room_Price` INT,
  `Room_Availability` BIT,
  FOREIGN KEY (`Hotel_ID`) REFERENCES `Hotels`(`Hotel_ID`)
);

CREATE TABLE `Room_Reservations` (
  `Reservation_ID` INT,
  `Room_ID` INT,
  PRIMARY KEY (`Reservation_ID`, `Room_ID`),
  FOREIGN KEY (`Reservation_ID`) REFERENCES `Hotel_Reservations`(`Reservation_ID`),
  FOREIGN KEY (`Room_ID`) REFERENCES `Rooms`(`Room_ID`)
);

CREATE TABLE `Cars` (
  `Car_ID` INT PRIMARY KEY,
  `Make` VARCHAR(20),
  `Model` VARCHAR(20),
  `Car_Availability` BIT,
  `Renting_Rate` INT
);

CREATE TABLE `Car_Rentals` (
  `Rental_ID` INT PRIMARY KEY,
  `Pickup_Date` DATE,
  `Return_Date` DATE,
  `Renter_ID` INT,
  FOREIGN KEY (`Renter_ID`) REFERENCES `Users`(`User_ID`)
);

CREATE TABLE `Rental_Cars` (
  `Rental_ID` INT,
  `Car_ID` INT,
  PRIMARY KEY (`Rental_ID`, `Car_ID`),
  FOREIGN KEY (`Rental_ID`) REFERENCES `Car_Rentals`(`Rental_ID`),
  FOREIGN KEY (`Car_ID`) REFERENCES `Cars`(`Car_ID`)
);
