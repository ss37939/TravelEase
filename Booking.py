import mysql.connector

# Connect to MySQL
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="NationalSassy!23",
    database="vacay"
)

# Function for searching flights
def search_flights(departure_city, arrival_city):
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM Flight WHERE Departure_City = %s AND Arrival_City = %s", (departure_city, arrival_city))
    flights = cursor.fetchall()
    cursor.close()
    return flights

# Function for registering a new user
def register_user(first_name, last_name, username, password, email, date_of_birth):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO User (First_Name, Last_Name, Username, Password, Email, Date_of_Birth) VALUES (%s, %s, %s, %s, %s, %s)", (first_name, last_name, username, password, email, date_of_birth))
    mydb.commit()
    cursor.close()

# Function for user authentication
def authenticate_user(username, password):
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM User WHERE Username = %s AND Password = %s", (username, password))
    user = cursor.fetchone()
    cursor.close()
    return user

# Function for booking a flight
def book_flight(booker_id, flight_id, total_price):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Flight_ID, Total_Price, Booking_Status) VALUES (%s, %s, %s, %s)", (booker_id, flight_id, total_price, "Booked"))
    mydb.commit()
    cursor.close()

# Function for displaying available cars
def display_cars():
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM Car")
    cars = cursor.fetchall()
    cursor.close()
    print("Available cars:")
    for car in cars:
        print(car)

# Function for displaying available hotels
def display_hotels():
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM Hotel")
    hotels = cursor.fetchall()
    cursor.close()
    print("Available hotels:")
    for hotel in hotels:
        print(hotel)

# Function for displaying available hotel rooms
def display_rooms():
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM Room")
    rooms = cursor.fetchall()
    cursor.close()
    print("Available rooms:")
    for room in rooms:
        print(room)

# Function for booking a car
def book_car(booker_id, car_id):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Total_Price, Booking_Status, Car_ID) VALUES (%s, %s, %s, %s)", (booker_id, 200, "Booked", car_id))
    mydb.commit()
    cursor.close()

# Function for booking a hotel
def book_hotel(booker_id, hotel_id):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Total_Price, Booking_Status, Hotel_ID) VALUES (%s, %s, %s, %s)", (booker_id, 200, "Booked", hotel_id))
    mydb.commit()
    cursor.close()

# Function for booking a hotel room
def book_hotel_room(booker_id, room_id):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Total_Price, Booking_Status, Room_ID) VALUES (%s, %s, %s, %s)", (booker_id, 200, "Booked", room_id))
    mydb.commit()
    cursor.close()

# Function for displaying user bookings
# Function to display bookings for a specific user
# Function to display bookings for a specific user
def display_user_bookings():
    booker_id = input("Enter your user ID: ")
    cursor = mydb.cursor()
    query = """
        SELECT
            B.Booker_ID,
            GROUP_CONCAT(F.Flight_ID) AS Flight_IDs,
            GROUP_CONCAT(C.Car_ID) AS Car_IDs,
            GROUP_CONCAT(H.Hotel_ID) AS Hotel_IDs,
            GROUP_CONCAT(R.Room_ID) AS Room_IDs
        FROM
            Booking B
        LEFT JOIN
            Flight F ON B.Flight_ID = F.Flight_ID
        LEFT JOIN
            Car C ON B.Car_ID = C.Car_ID
        LEFT JOIN
            Hotel H ON B.Hotel_ID = H.Hotel_ID
        LEFT JOIN
            Room R ON B.Room_ID = R.Room_ID
        WHERE
            B.Booker_ID = %s
        GROUP BY
            B.Booker_ID
    """
    cursor.execute(query, (booker_id,))
    bookings = cursor.fetchone()
    cursor.close()

    if bookings:
        print("User Bookings:")
        print(f"Booker ID: {bookings[0]}")
        print(f"Flight IDs: {bookings[1]}")
        print(f"Car IDs: {bookings[2]}")
        print(f"Hotel IDs: {bookings[3]}")
        print(f"Room IDs: {bookings[4]}")
    else:
        print("No bookings found for the specified user.")



def main():
    while True:
        print("1. Login")
        print("2. Register")
        print("3. Search Flights (No Login)")
        print("4. View My Bookings")
        print("5. Exit")
        choice = input("Enter your choice: ")

        if choice == "1":
            while True:
                username = input("Enter your username: ")
                password = input("Enter your password: ")

                user = authenticate_user(username, password)
                if user:
                    print("User authenticated successfully!")

                    # Book a flight
                    while True:
                        departure_city = input("Enter the departure city: ")
                        arrival_city = input("Enter the arrival city: ")

                        flights = search_flights(departure_city, arrival_city)

                        if flights:
                            print("Available flights:")
                            for flight in flights:
                                print(flight)

                            flight_id = input("Enter the Flight_ID of the flight you want to book: ")
                            flight_id = int(flight_id)

                            # Check if the entered Flight_ID exists in the list of available flights
                            if any(flight[0] == flight_id for flight in flights):
                                book_flight(user[0], flight_id, 200)     
                                break
                            else:
                                print("Invalid Flight_ID. Please enter a valid Flight_ID.")

                        else:
                            print("No flights available for the given departure and arrival cities.")
                            choice = input("Do you want to enter valid cities (Y/N)? ").strip().upper()
                            if choice != 'Y':
                                print("Logging out...")
                                break
                    else:
                        continue
                    break

                    # Book a car
                    while True:
                        display_cars()
                        car_id = input("Enter the Car ID you want to book: ")
                        car_id = int(car_id)
                        book_car(user[0], car_id)
                        print("Car booked successfully!")
                        break

                    # Book a hotel
                    while True:
                        display_hotels()
                        hotel_id = input("Enter the Hotel ID you want to book: ")
                        hotel_id = int(hotel_id)
                        book_hotel(user[0], hotel_id)
                        print("Hotel booked successfully!")
                        break

                    # Book a hotel room
                    while True:
                        display_rooms()
                        room_id = input("Enter the Room ID you want to book: ")
                        room_id = int(room_id)
                        book_hotel_room(user[0], room_id)
                        print("Hotel room booked successfully!")
                        break

                    print("Booking completed successfully!")
                    break

                else:
                    print("Invalid username or password!")
                    choice = input("Do you want to try again (Y/N)? ").strip().upper()
                    if choice != 'Y':
                        print("Goodbye!")
                        break

        elif choice == "2":
            # Gather user registration information
            first_name = input("Enter your first name: ")
            last_name = input("Enter your last name: ")
            username = input("Choose a username: ")
            password = input("Choose a password: ")
            email = input("Enter your email: ")
            date_of_birth = input("Enter your date of birth (YYYY-MM-DD): ")

            # Register the user
            register_user(first_name, last_name, username, password, email, date_of_birth)
            print("User registered successfully!")
        
        elif choice == "3":
            departure_city = input("Enter the departure city: ")
            arrival_city = input("Enter the arrival city: ")
            
            flights = search_flights(departure_city, arrival_city)
            
            if flights:
                print("Available flights:")
                for flight in flights:
                    print(flight)
                    
                print("Returning to the main menu.")
            else:
                print("No flights available for the given departure and arrival cities.")
            
        elif choice == "4":
            # View user bookings
            
            try:
                display_user_bookings()
            except ValueError:
                print("Invalid User ID. Please enter a valid integer User ID.")
        
        elif choice == "5":
            print("Thank you for using our service!")
            break

        else:
            print("Invalid choice. Please choose 1, 2, 3, 4, or 5.")
            
            try_again = input("Do you want to try again (Y/N)? ").strip().upper()
            if try_again != 'Y':
                print("Thank you for using our service!")
                break

if __name__ == "__main__":
    main()
