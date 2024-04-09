import mysql.connector

# Connect to MySQL
mydb = mysql.connector.connect(
  host="localhost",
  user="yourusername",
  password="yourpassword",
  database="yourdatabase"
)

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

# Example usage
user = authenticate_user("example_user", "example_password")
if user:
    print("User authenticated successfully!")
    # Prompt the user to input origin and destination cities
    origin_city = input("Enter the origin city: ")
    destination_city = input("Enter the destination city: ")

    # Call the search_trips function with user input
    trips = search_trips(origin_city, destination_city)

    print("Available trips:")
    for trip in trips:
        print(trip)
    # Book a trip
    book_trip(user[0], trips[0][0], 200)  # Assuming the first trip found is booked
else:
    print("Invalid username or password!")
