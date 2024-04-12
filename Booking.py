import mysql.connector

# Connect to MySQL
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="NationalSassy!23",
  database="vacay"
)

# Function for registering a new user
def register_user(first_name, last_name, username, password, email, date_of_birth):
    cursor = mydb.cursor()
    # Modify the INSERT statement to exclude the User_ID field
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

# Function for searching trips
def search_trips(origin_city, destination_city):
    cursor = mydb.cursor()
    cursor.execute("SELECT * FROM Trip WHERE Origin_City = %s AND Destination_City = %s", (origin_city, destination_city))
    trips = cursor.fetchall()
    cursor.close()
    return trips

# Function for booking a trip
def book_trip(booker_id, trip_id, total_price):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Trip_ID, Total_Price, Booking_Status) VALUES (%s, %s, %s, %s)", (booker_id, trip_id, total_price, "Booked"))
    mydb.commit()
    cursor.close()

# Function for user registration
def register_user(first_name, last_name, username, password, email, date_of_birth):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO User (First_Name, Last_Name, Username, Password, Email, Date_of_Birth) VALUES (%s, %s, %s, %s, %s, %s)", (first_name, last_name, username, password, email, date_of_birth))
    mydb.commit()
    cursor.close()

def main():
    while True:
        print("1. Login")
        print("2. Register")
        print("3. Search Flights (No Login)")
        choice = input("Enter your choice: ")

        if choice == "1":
            while True:
                username = input("Enter your username: ")
                password = input("Enter your password: ")

                user = authenticate_user(username, password)
                if user:
                    print("User authenticated successfully!")

                    while True:
                        origin_city = input("Enter the origin city: ")
                        destination_city = input("Enter the destination city: ")

                        trips = search_trips(origin_city, destination_city)

                        if trips:
                            print("Available trips:")
                            for trip in trips:
                                print(trip)

                            book_trip(user[0], trips[0][0], 200)
                            break
                        else:
                            print("No trips available for the given origin and destination cities.")
                            choice = input("Do you want to enter valid cities (Y/N)? ").strip().upper()
                            if choice != 'Y':
                                print("Logging out...")
                                break
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
            origin_city = input("Enter the origin city: ")
            destination_city = input("Enter the destination city: ")
            
            trips = search_trips(origin_city, destination_city)
            
            if trips:
                print("Available trips:")
                for trip in trips:
                    print(trip)
                    
                while True:
                    book_choice = input("Do you want to book a trip (Y/N)? ").strip().upper()
                    if book_choice == 'Y':
                        # Assuming booking the first available trip
                        book_trip(user[0], trips[0][0], 200)
                        print("Trip booked successfully!")
                        break
                    elif book_choice == 'N':
                        print("Returning to the main menu.")
                        break
                    else:
                        print("Invalid choice. Please enter 'Y' or 'N'.")

            else:
                print("No trips available for the given origin and destination cities.")
            
        else:
            print("Invalid choice. Please choose 1, 2, or 3.")
            
            try_again = input("Do you want to try again (Y/N)? ").strip().upper()
            if try_again != 'Y':
                print("Thank you for using our service!")
                break
        break

if __name__ == "__main__":
    main()