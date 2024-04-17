from flask import Flask, render_template, request, redirect, url_for
from datetime import datetime
import mysql.connector


app = Flask(__name__)

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

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    error = None
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = authenticate_user(username, password)
        if user:
            # Redirect to a page where you can search for trips
            return redirect(url_for('search_page'))
        else:
            error = "Invalid username or password"
    return render_template('login.html', error=error)

@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        first_name = request.form['first-name']
        last_name = request.form['last-name']
        username = request.form['username']
        password = request.form['password']
        email = request.form['email']
        date_of_birth = request.form['dob']
        # Calculate age based on date of birth
        dob = datetime.strptime(date_of_birth, '%Y-%m-%d')
        age = (datetime.now() - dob).days // 365

        if age < 18:
            return render_template('register.html', error="Sorry, you must be at least 18 years old to register.")

        register_user(first_name, last_name, username, password, email, date_of_birth)
        return render_template('registration_success.html')
    else:
        return render_template('register.html')

@app.route('/search')
def search_page():
    return render_template('search.html')

@app.route('/search', methods=['POST'])
def search():
    if request.method == 'POST':
        origin_city = request.form['origin-city']
        destination_city = request.form['destination-city']

        # Perform search for trips
        trips = search_trips(origin_city, destination_city)

        if trips:
            # If trips are found, render the search results
            return render_template('search.html', trips=trips)
        else:
            # If no trips are found, render the search form with an error message
            return render_template('search.html', error="No trips available for the given origin and destination cities.", origin_city=origin_city, destination_city=destination_city)
    else:
        # Render the search form without any error messages
        return render_template('search.html', error=None)

@app.route('/book_trip/<int:trip_id>')
def book(trip_id):
    # Assuming the user is logged in and authenticated
    # For simplicity, we'll hardcode the booker_id and total_price here
    booker_id = 1
    total_price = 200
    book_trip(booker_id, trip_id, total_price)
    return "Trip booked successfully!"

@app.route('/logout', methods=['POST'])
def logout():
    # Perform logout actions here, such as clearing session data or redirecting to the login page
    return redirect(url_for('login'))




if __name__ == "__main__":
    app.run(debug=True)
