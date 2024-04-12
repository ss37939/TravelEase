import mysql.connector

# Establishing connection to the MySQL server
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NationalSassy!23",
    database="vacay"
)

# Creating a cursor object to interact with the database
mycursor = mydb.cursor()

# Table creation SQL statements
sql_commands = [
    """CREATE TABLE IF NOT EXISTS `User` (
      `User_ID` int auto_increment,
      `First_Name` varchar(30),
      `Last_Name` varchar(30),
      `Username` varchar(20),
      `Password` varchar(20),
      `Email` varchar(50),
      `Date_of_Birth` date,
      PRIMARY KEY (`User_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Payment_Transaction` (
      `Transaction_ID` int,
      `Transaction_Amount` int,
      `Payment_Status` varchar(20),
      `Transaction_Timestamp` datetime,
      `Payment_Method` varchar(30),
      `Payor_ID` int,
      PRIMARY KEY (`Transaction_ID`),
      --FOREIGN KEY (`Payor_ID`) REFERENCES `User`(`User_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Booking` (
      `Booking_ID` int,
      `Booker_ID` int,
      `Trip_ID` int,
      `Rental_ID` int,
      `Reservation_ID` int,
      `Transaction_ID` int,
      `Total_Price` int,
      `Booking_Status` varchar(20),
      PRIMARY KEY (`Booking_ID`),
      --FOREIGN KEY (`Booker_ID`) REFERENCES `User`(`User_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Trip` (
      `Trip_ID` int,
      `Trip_Type` varchar(20),
      `Trip_Price` int,
      `Origin_City` varchar(20),
      `Destination_City` varchar(20),
      `Passenger_ID` int,
      PRIMARY KEY (`Trip_ID`),
      --FOREIGN KEY (`Passenger_ID`) REFERENCES `User`(`User_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Flight` (
      `Flight_ID` int,
      `Flight_Name` varchar(10),
      `Flight_Airline` varchar(20),
      `Departure_City` varchar(20),
      `Arrival_City` varchar(20),
      `Departure_Time` datetime,
      `Flight_Price` INT,
      `Flight_Availability` bit,
      PRIMARY KEY (`Flight_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Trip_Flights` (
      `Trip_ID` int,
      `Flight_ID` int,
      PRIMARY KEY (`Trip_ID`),
      --FOREIGN KEY (`Trip_ID`) REFERENCES `Trip`(`Trip_ID`),
      --FOREIGN KEY (`Flight_ID`) REFERENCES `Flight`(`Flight_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Hotel_Reservation` (
      `Reservation_ID` int,
      `Reservation_Price` int,
      `CheckIn_Date` date,
      `CheckOut_Date` date,
      `GuestID` int,
      PRIMARY KEY (`Reservation_ID`),
      --FOREIGN KEY (`GuestID`) REFERENCES `User`(`User_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Reservation_Rooms` (
      `Reservation_ID` int,
      `Room_ID` int,
      PRIMARY KEY (`Reservation_ID`),
      --FOREIGN KEY (`Reservation_ID`) REFERENCES `Hotel_Reservation`(`Reservation_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Hotel` (
      `Hotel_ID` int,
      `Hotel_Name` varchar(20),
      `Hotel_City` varchar(20),
      PRIMARY KEY (`Hotel_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Room` (
      `Room_ID` int,
      `Hotel_ID` int,
      `Room_Number` int,
      `Room_Type` varchar(20),
      `Room_Price` int,
      `Room_Availability` bit,
      PRIMARY KEY (`Room_ID`),
      --FOREIGN KEY (`Hotel_ID`) REFERENCES `Hotel`(`Hotel_ID`),
      --FOREIGN KEY (`Room_ID`) REFERENCES `Reservation_Rooms`(`Room_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Car` (
      `Car_ID` int,
      `Make` varchar(20),
      `Model` varchar(20),
      `Car_Availability` bit,
      `Renting_Rate` int,
      PRIMARY KEY (`Car_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Car_Rental` (
      `Rental_ID` int,
      `Pickup_Date` date,
      `Return_Date` date,
      `Renter_ID` int,
      PRIMARY KEY (`Rental_ID`),
      --FOREIGN KEY (`Renter_ID`) REFERENCES `User`(`User_ID`)
    );""",
    """CREATE TABLE IF NOT EXISTS `Rental_Cars` (
      `Rental_ID` int,
      `Car_ID` int,
      PRIMARY KEY (`Rental_ID`),
      --FOREIGN KEY (`Rental_ID`) REFERENCES `Car_Rental`(`Rental_ID`),
      --FOREIGN KEY (`Car_ID`) REFERENCES `Car`(`Car_ID`)
    );"""
]

# Execute table creation SQL commands
for command in sql_commands:
    mycursor.execute(command)

# Committing the changes
mydb.commit()

# Displaying the tables
mycursor.execute("SHOW TABLES")
print("Tables:")
tables = mycursor.fetchall()  # Fetch all the results from the SHOW TABLES query
for table in tables:
    table_name = table[0]
    print(f"\nContents of '{table_name}' table:")
    mycursor.execute(f"SELECT * FROM {table_name}")
    for row in mycursor.fetchall():
        print(row)

# Close the cursor and database connection
mycursor.close()
mydb.close()
