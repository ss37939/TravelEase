from flask import Flask, render_template, request, redirect, url_for, session
import mysql.connector
from datetime import datetime

app = Flask(__name__)
app.secret_key = 'your_secret_key'

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

# Function for displaying user bookings
def display_user_bookings(booker_id):
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
    return bookings

# Function to calculate age based on date of birth
def calculate_age(date_of_birth):
    today = datetime.today()
    birth_date = datetime.strptime(date_of_birth, '%Y-%m-%d')
    age = today.year - birth_date.year - ((today.month, today.day) < (birth_date.month, birth_date.day))
    return age

# Route for home page
@app.route('/')
def index():
    return render_template('index.html')

# Route for login
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = authenticate_user(username, password)
        if user:
            session['user_id'] = user[0]
            session['user_first_name'] = user[1]  # Assuming user's first name is in index 1
            return redirect(url_for('dashboard'))
        else:
            return render_template('login.html', error='Invalid username or password.')
    return render_template('login.html')

# Route for registration
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        # Get registration form data
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        username = request.form['username']
        password = request.form['password']
        email = request.form['email']
        date_of_birth = request.form['date_of_birth']
        
        # Validate age
        age = calculate_age(date_of_birth)
        if age < 18:
            error = 'You must be 18 or older to register.'
            return render_template('register.html', error=error)
        
        # Register user
        register_user(first_name, last_name, username, password, email, date_of_birth)
        return redirect(url_for('login'))
    return render_template('register.html')

# Route for dashboard
@app.route('/dashboard')
def dashboard():
    if 'user_id' in session:
        return render_template('dashboard.html')
    return redirect(url_for('login'))

# Route for searching flights
@app.route('/search_flights', methods=['GET', 'POST'])
def search_flights_route():
    if request.method == 'POST':
        departure_city = request.form['departure_city']
        arrival_city = request.form['arrival_city']
        flights = search_flights(departure_city, arrival_city)
        return render_template('flights.html', flights=flights)
    else:
        # Handle GET request (render search form)
        return render_template('search.html')

# Route for booking flight
@app.route('/book_flight/<int:flight_id>', methods=['GET', 'POST'])
def book_flight_route(flight_id):
    if request.method == 'POST':
        if 'user_id' in session:
            book_flight(session['user_id'], flight_id, 200)
            return render_template('booking_success.html')  # Render a template for booking success
        return redirect(url_for('login'))
    else:
        # Handle GET request (if needed)
        pass  # You can add GET request handling here if necessary

# Route for displaying user bookings
@app.route('/user_bookings')
def user_bookings():
    if 'user_id' in session:
        bookings = display_user_bookings(session['user_id'])
        return render_template('user_bookings.html', bookings=bookings)
    return redirect(url_for('login'))

# Route for logout
@app.route('/logout')
def logout():
    session.pop('user_id', None)
    return redirect(url_for('login'))

# Route for searching cars
@app.route('/search_cars', methods=['GET'])
def search_cars_route():
    # Fetch all cars from the database
    cursor = mydb.cursor()
    cursor.execute("SELECT Car_ID, Make, Model, Renting_Rate FROM Car")
    cars = cursor.fetchall()
    cursor.close()
    print(cars)  # Add this line to check if the data is fetched correctly
    return render_template('cars.html', cars=cars)
    
# Function for booking a car
def book_car(user_id, car_id):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Car_ID, Booking_Status) VALUES (%s, %s, %s)", (user_id, car_id, "Booked"))
    mydb.commit()
    cursor.close()

# Route for booking a car
@app.route('/book_car/<int:car_id>', methods=['GET', 'POST'])
def book_car_route(car_id):
    if request.method == 'POST':
        if 'user_id' in session:
            # Perform car booking for the selected car_id
            user_id = session['user_id']
            book_car(user_id, car_id)
            return render_template('booking_success.html')  # Render a template for booking success
        return redirect(url_for('login'))
    else:
        # Handle GET request (if needed)
        pass  # You can add GET request handling here if necessary

# Route for searching hotels
@app.route('/search_hotels', methods=['GET'])
def search_hotels_route():
    # Fetch all hotels from the database
    cursor = mydb.cursor()
    cursor.execute("SELECT Hotel_ID, Hotel_Name, Hotel_City FROM hotel")
    hotels = cursor.fetchall()
    cursor.close()
    print(hotels)  # Add this line to check if the data is fetched correctly
    return render_template('hotels.html', hotels=hotels)

# Function for booking a hotel
def book_hotel(user_id, hotel_id):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Hotel_ID, Booking_Status) VALUES (%s, %s, %s)", (user_id, hotel_id, "Booked"))
    mydb.commit()
    cursor.close()

# Route for booking a hotel
@app.route('/book_hotel/<int:hotel_id>', methods=['GET', 'POST'])
def book_hotel_route(hotel_id):
    if request.method == 'POST':
        if 'user_id' in session:
            # Perform hotel booking for the selected hotel_id
            user_id = session['user_id']
            book_hotel(user_id, hotel_id)
            return render_template('booking_success.html')  # Render a template for booking success
        return redirect(url_for('login'))
    else:
        # Handle GET request (if needed)
        pass  # You can add GET request handling here if necessary

# Function for booking a hotel room
def book_hotel_room(user_id, room_id):
    cursor = mydb.cursor()
    cursor.execute("INSERT INTO Booking (Booker_ID, Room_ID, Booking_Status) VALUES (%s, %s, %s)", (user_id, room_id, "Booked"))
    mydb.commit()
    cursor.close()

# Route for booking a hotel room
@app.route('/book_hotel_room/<int:room_id>', methods=['GET', 'POST'])
def book_hotel_room_route(room_id):
    if request.method == 'POST':
        if 'user_id' in session:
            # Perform hotel room booking for the selected room_id
            user_id = session['user_id']
            book_hotel_room(user_id, room_id)
            return render_template('booking_success.html')  # Render a template for booking success
        return redirect(url_for('login'))
    else:
        # Handle GET request (if needed)
        pass

# Route for searching hotel rooms
@app.route('/search_hotel_room', methods=['GET'])
def search_hotel_rooms_route():
    cursor = mydb.cursor()
    cursor.execute("SELECT Room_ID, Hotel_ID, Room_Number, Room_Type, Room_Price FROM room")
    rooms = cursor.fetchall()
    cursor.close()
    print(rooms)
    return render_template('hotel_rooms.html', rooms=rooms)


if __name__ == '__main__':
    app.run(debug=True)
