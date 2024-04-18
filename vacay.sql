-- Users
INSERT INTO Users (User_ID, First_Name, Last_Name, Username, Password, Email, Date_of_Birth)
VALUES
(1, 'John', 'Doe', 'johndoe', 'password123', 'john.doe@gmail.com', '1990-05-15'),
(2, 'Jane', 'Smith', 'janesmith', 'abc123', 'jane.smith@gmail.com', '1985-09-20'),
(3, 'Michael', 'Johnson', 'michaelj', 'passw0rd', 'michael.johnson@yahoo.com', '1988-12-10'),
(4, 'Emily', 'Brown', 'emilyb', 'password456', 'emily.brown@yahoo.com', '1992-08-25'),
(5, 'David', 'Wilson', 'davidw', 'david123', 'david.wilson@gmail.com', '1980-04-12'),
(6, 'Sophia', 'Martinez', 'sophiam', 'sophia456', 'sophia.martinez@yahoo.com', '1995-11-30'),
(7, 'Daniel', 'Taylor', 'danielt', 'daniel789', 'daniel.taylor@gmail.com', '1987-03-18'),
(8, 'Olivia', 'Anderson', 'oliviaa', 'olivia123', 'olivia.anderson@yahoo.com', '1998-09-05'),
(9, 'William', 'Thomas', 'williamt', 'william456', 'william.thomas@gmail.com', '1983-07-22'),
(10, 'Ava', 'White', 'avaw', 'ava789', 'ava.white@yahoo.com', '1990-01-07'),
(11, 'James', 'Jackson', 'jamesj', 'james123', 'james.jackson@gmail.com', '1975-06-14'),
(12, 'Isabella', 'Harris', 'isabellah', 'isabella456', 'isabella.harris@yahoo.com', '1988-12-03'),
(13, 'Liam', 'Nelson', 'liamn', 'liam789', 'liam.nelson@gmail.com', '1993-04-28'),
(14, 'Mia', 'Clark', 'clarkm', 'mia123', 'mia.clark@yahoo.com', '1986-11-19'),
(15, 'Ethan', 'King', 'ethank', 'ethan456', 'ethan.king@gmail.com', '1997-02-10'),
(16, 'Charlotte', 'Lee', 'charlottel', 'charlotte123', 'charlotte.lee@yahoo.com', '1984-08-17'),
(17, 'Noah', 'Baker', 'noahb', 'noah456', 'noah.baker@gmail.com', '1991-10-29'),
(18, 'Amelia', 'Garcia', 'ameliag', 'amelia123', 'amelia.garcia@yahoo.com', '1989-05-26'),
(19, 'Logan', 'Evans', 'logane', 'logan456', 'logan.evans@gmail.com', '1982-03-08'),
(20, 'Harper', 'Rivera', 'harperr', 'harper123', 'harper.rivera@yahoo.com', '1996-06-23'),
(21, 'Benjamin', 'Young', 'benjaminy', 'benjamin456', 'benjamin.young@gmail.com', '1981-09-15'),
(22, 'Evelyn', 'Gonzalez', 'evelyng', 'evelyn123', 'evelyn.gonzalez@yahoo.com', '1994-12-31'),
(23, 'Lucas', 'Perez', 'lucasp', 'lucas456', 'lucas.perez@gmail.com', '1987-07-04');

-- 100
-- Flights
INSERT INTO Flights (Flight_ID, Flight_Name, Flight_Airline, Departure_City, Arrival_City, Departure_Time, Flight_Price, Flight_Availability)
VALUES
(101, 'AA123', 'American Airlines', 'New York', 'Los Angeles', '2024-04-20 08:00:00', 300, 1),
(102, 'BA456', 'British Airways', 'London', 'Paris', '2024-04-22 10:00:00', 250, 1),
(103, 'UA789', 'United Airlines', 'San Francisco', 'Chicago', '2024-04-25 12:00:00', 200, 1),
(104, 'DL234', 'Delta Airlines', 'Los Angeles', 'New York', '2024-05-10 09:30:00', 400, 1),
(105, 'AF567', 'Air France', 'Paris', 'London', '2024-05-15 12:00:00', 300, 1),
(106, 'UA890', 'United Airlines', 'Chicago', 'San Francisco', '2024-05-20 08:45:00', 250, 1),
(107, 'AC123', 'Air Canada', 'Toronto', 'New York', '2024-05-25 11:15:00', 450, 1),
(108, 'QF456', 'Qantas', 'Sydney', 'London', '2024-06-01 14:30:00', 500, 1),
(109, 'JL789', 'Japan Airlines', 'Tokyo', 'Hong Kong', '2024-06-05 10:00:00', 600, 1),
(110, 'AA234', 'American Airlines', 'Miami', 'Los Angeles', '2024-06-10 08:20:00', 350, 1),
(111, 'AF567', 'Air France', 'Paris', 'Berlin', '2024-06-15 11:45:00', 400, 1),
(112, 'BA789', 'British Airways', 'Barcelona', 'Rome', '2024-06-20 09:30:00', 450, 1),
(113, 'SU123', 'Aeroflot', 'Moscow', 'London', '2024-06-25 12:15:00', 500, 1),
(114, 'AM456', 'Aeromexico', 'Mexico City', 'Los Angeles', '2024-06-30 14:45:00', 550, 1),
(115, 'SQ789', 'Singapore Airlines', 'Singapore', 'Hong Kong', '2024-07-05 10:30:00', 600, 1),
(116, 'JJ234', 'LATAM Airlines', 'Rio de Janeiro', 'Miami', '2024-07-10 08:00:00', 650, 1),
(117, 'EK567', 'Emirates', 'Mumbai', 'Dubai', '2024-07-15 11:20:00', 700, 1),
(118, 'TG890', 'Thai Airways', 'Bangkok', 'Phuket', '2024-07-20 14:00:00', 450, 1),
(119, 'KE123', 'Korean Air', 'Seoul', 'Tokyo', '2024-07-25 10:45:00', 400, 1),
(120, 'KL456', 'KLM Royal Dutch Airlines', 'Amsterdam', 'Barcelona', '2024-07-30 12:30:00', 550, 1),
(121, 'MU789', 'China Eastern Airlines', 'Shanghai', 'Beijing', '2024-08-05 08:15:00', 600, 1),
(122, 'AC234', 'Air Canada', 'Vancouver', 'Toronto', '2024-08-10 11:40:00', 650, 1),
(123, 'LH567', 'Lufthansa', 'Frankfurt', 'London', '2024-08-15 14:20:00', 700, 1),
(124, 'DL890', 'Delta Airlines', 'Los Angeles', 'Paris', '2024-08-20 10:30:00', 700, 1),
(125, 'AF123', 'Air France', 'Paris', 'Sydney', '2024-08-25 13:45:00', 800, 1),
(126, 'UA456', 'United Airlines', 'Sydney', 'London', '2024-08-30 09:15:00', 750, 1),
(127, 'BA789', 'British Airways', 'London', 'New York', '2024-09-05 11:00:00', 600, 1),
(128, 'AA234', 'American Airlines', 'New York', 'Los Angeles', '2024-09-10 08:30:00', 500, 1),
(129, 'DL567', 'Delta Airlines', 'Los Angeles', 'San Francisco', '2024-09-15 07:45:00', 200, 1),
(130, 'UA678', 'United Airlines', 'San Francisco', 'New York', '2024-09-20 12:20:00', 400, 1),
(131, 'AF789', 'Air France', 'New York', 'Paris', '2024-09-25 09:30:00', 700, 1),
(132, 'BA345', 'British Airways', 'Paris', 'Sydney', '2024-09-30 14:10:00', 850, 1),
(133, 'AA567', 'American Airlines', 'Sydney', 'Los Angeles', '2024-10-05 08:45:00', 700, 1),
(134, 'DL456', 'Delta Airlines', 'Los Angeles', 'New York', '2024-10-10 11:30:00', 600, 1),
(135, 'UA789', 'United Airlines', 'New York', 'London', '2024-10-15 09:00:00', 700, 1),
(136, 'AF234', 'Air France', 'London', 'Paris', '2024-10-20 12:45:00', 200, 1),
(137, 'BA567', 'British Airways', 'Paris', 'New York', '2024-10-25 08:20:00', 600, 1),
(138, 'AA678', 'American Airlines', 'New York', 'Los Angeles', '2024-10-30 10:10:00', 500, 1),
(139, 'DL890', 'Delta Airlines', 'Los Angeles', 'San Francisco', '2024-11-05 09:50:00', 200, 1),
(140, 'UA123', 'United Airlines', 'San Francisco', 'New York', '2024-11-10 11:25:00', 400, 1),
(141, 'AF345', 'Air France', 'New York', 'Paris', '2024-11-15 13:15:00', 700, 1),
(142, 'BA678', 'British Airways', 'Paris', 'Sydney', '2024-11-20 08:40:00', 850, 1),
(143, 'AA789', 'American Airlines', 'Sydney', 'Los Angeles', '2024-11-25 12:30:00', 700, 1),
(144, 'DL234', 'Delta Airlines', 'Los Angeles', 'New York', '2024-11-30 10:00:00', 600, 1),
(145, 'UA456', 'United Airlines', 'New York', 'London', '2024-12-05 08:15:00', 700, 1),
(146, 'AF567', 'Air France', 'London', 'Paris', '2024-12-10 11:30:00', 200, 1),
(147, 'BA789', 'British Airways', 'Paris', 'New York', '2024-12-15 09:20:00', 600, 1),
(148, 'AA123', 'American Airlines', 'New York', 'Los Angeles', '2024-12-20 12:00:00', 500, 1),
(149, 'DL345', 'Delta Airlines', 'Los Angeles', 'San Francisco', '2024-12-25 09:45:00', 200, 1),
(150, 'UA678', 'United Airlines', 'San Francisco', 'New York', '2024-12-30 11:40:00', 400, 1),
(151, 'AF789', 'Air France', 'New York', 'Paris', '2025-01-05 13:00:00', 700, 1),
(152, 'BA234', 'British Airways', 'Paris', 'Sydney', '2025-01-10 08:30:00', 850, 1),
(153, 'AA567', 'American Airlines', 'Sydney', 'Los Angeles', '2025-01-15 12:20:00', 700, 1),
(154, 'DL678', 'Delta Airlines', 'Los Angeles', 'New York', '2025-01-20 09:15:00', 600, 1),
(155, 'UA789', 'United Airlines', 'New York', 'London', '2025-01-25 08:45:00', 700, 1),
(156, 'AF123', 'Air France', 'London', 'Paris', '2025-01-30 11:10:00', 200, 1),
(157, 'BA345', 'British Airways', 'Paris', 'New York', '2025-02-05 09:00:00', 600, 1),
(158, 'AA678', 'American Airlines', 'New York', 'Los Angeles', '2025-02-10 12:30:00', 500, 1),
(159, 'DL890', 'Delta Airlines', 'Los Angeles', 'San Francisco', '2025-02-15 09:40:00', 200, 1),
(160, 'UA123', 'United Airlines', 'San Francisco', 'New York', '2025-02-20 11:35:00', 400, 1),
(161, 'AF345', 'Air France', 'New York', 'Paris', '2025-02-25 13:20:00', 700, 1),
(162, 'BA678', 'British Airways', 'Paris', 'Sydney', '2025-03-01 08:10:00', 850, 1),
(163, 'AA789', 'American Airlines', 'Sydney', 'Los Angeles', '2025-03-05 12:15:00', 700, 1),
(164, 'DL234', 'Delta Airlines', 'Los Angeles', 'New York', '2025-03-10 09:30:00', 600, 1),
(165, 'UA456', 'United Airlines', 'New York', 'London', '2025-03-15 08:00:00', 700, 1)
(166, 'AF567', 'Air France', 'London', 'Paris', '2025-03-20 11:45:00', 200, 1),
(167, 'BA789', 'British Airways', 'Paris', 'New York', '2025-03-25 09:30:00', 600, 1),
(168, 'AA123', 'American Airlines', 'New York', 'Los Angeles', '2025-03-30 12:40:00', 500, 1);

-- 3000
-- Hotels
INSERT INTO Hotels (Hotel_ID, Hotel_Name, Hotel_City)
VALUES
(3001, 'Marriott', 'New York'),
(3002, 'Hilton', 'London'),
(3003, 'Sheraton', 'San Francisco'),
(3004, 'Hyatt Regency', 'Los Angeles'),
(3005, 'InterContinental', 'London'),
(3006, 'Four Seasons', 'San Francisco'),
(3007, 'Hilton', 'New York'),
(3008, 'Marriott', 'Sydney'),
(3009, 'Shangri-La', 'Hong Kong'),
(3010, 'Ritz-Carlton', 'Miami'),
(3011, 'Holiday Inn', 'Paris'),
(3012, 'Westin', 'Rome'),
(3013, 'Park Plaza', 'London'),
(3014, 'Fairmont', 'Los Angeles'),
(3015, 'Mandarin Oriental', 'Hong Kong'),
(3016, 'Copacabana Palace', 'Rio de Janeiro'),
(3017, 'Burj Al Arab', 'Dubai'),
(3018, 'The Peninsula', 'Phuket'),
(3019, 'Shilla Stay', 'Tokyo'),
(3020, 'W Amsterdam', 'Barcelona'),
(3021, 'Grand Hyatt', 'Beijing'),
(3022, 'Fairmont Pacific Rim', 'Vancouver'),
(3023, 'The Ritz-Carlton', 'London'),
(3024, 'Hilton', 'Los Angeles'),
(3025, 'InterContinental', 'London'),
(3026, 'Marriott', 'San Francisco'),
(3027, 'Sheraton', 'New York'),
(3028, 'Four Seasons', 'Sydney'),
(3029, 'The Peninsula', 'Hong Kong'),
(3030, 'Ritz-Carlton', 'Miami'),
(3031, 'Holiday Inn', 'Paris'),
(3032, 'Westin', 'Rome'),
(3033, 'Park Plaza', 'London'),
(3034, 'Fairmont', 'Los Angeles'),
(3035, 'Mandarin Oriental', 'Hong Kong'),
(3036, 'Copacabana Palace', 'Rio de Janeiro'),
(3037, 'Burj Al Arab', 'Dubai'),
(3038, 'The Peninsula', 'Phuket'),
(3039, 'Shilla Stay', 'Tokyo'),
(3040, 'W Amsterdam', 'Barcelona'),
(3041, 'Grand Hyatt', 'Beijing'),
(3042, 'Fairmont Pacific Rim', 'Vancouver'),
(3043, 'The Ritz-Carlton', 'London'),
(3044, 'Hilton', 'Los Angeles'),
(3045, 'InterContinental', 'London'),
(3046, 'Marriott', 'San Francisco'),
(3047, 'Sheraton', 'New York'),
(3048, 'Four Seasons', 'Sydney'),
(3049, 'The Peninsula', 'Hong Kong'),
(3050, 'Ritz-Carlton', 'Miami'),
(3051, 'Holiday Inn', 'Paris'),
(3052, 'Westin', 'Rome'),
(3053, 'Park Plaza', 'London'),
(3054, 'Fairmont', 'Los Angeles'),
(3055, 'Mandarin Oriental', 'Hong Kong'),
(3056, 'Copacabana Palace', 'Rio de Janeiro'),
(3057, 'Burj Al Arab', 'Dubai'),
(3058, 'The Peninsula', 'Phuket'),
(3059, 'Shilla Stay', 'Tokyo'),
(3060, 'W Amsterdam', 'Barcelona'),
(3061, 'Grand Hyatt', 'Beijing'),
(3062, 'Fairmont Pacific Rim', 'Vancouver'),
(3063, 'The Ritz-Carlton', 'London'),
(3064, 'Hilton', 'Los Angeles'),
(3065, 'InterContinental', 'London'),
(3066, 'Marriott', 'San Francisco'),
(3067, 'Sheraton', 'New York'),
(3068, 'Four Seasons', 'Sydney'),
(3069, 'The Peninsula', 'Hong Kong'),
(3070, 'Ritz-Carlton', 'Miami'),
(3071, 'Holiday Inn', 'Paris'),
(3072, 'Westin', 'Rome'),
(3073, 'Park Plaza', 'London'),
(3074, 'Fairmont', 'Los Angeles'),
(3075, 'Mandarin Oriental', 'Hong Kong'),
(3076, 'Copacabana Palace', 'Rio de Janeiro'),
(3077, 'Burj Al Arab', 'Dubai'),
(3078, 'The Peninsula', 'Phuket'),
(3079, 'Shilla Stay', 'Tokyo'),
(3080, 'W Amsterdam', 'Barcelona'),
(3081, 'Grand Hyatt', 'Beijing'),
(3082, 'Fairmont Pacific Rim', 'Vancouver'),
(3083, 'The Ritz-Carlton', 'London');

-- 5000
-- Rooms
INSERT INTO Rooms (Room_ID, Hotel_ID, Room_Number, Room_Type, Room_Price, Room_Availability)
VALUES
(5001, 3001, 101, 'Standard', 100, 1),
(5002, 3002, 201, 'Suite', 200, 1),
(5003, 3003, 301, 'Deluxe', 150, 1),
(5004, 3004, 101, 'Standard', 150, 1),
(5005, 3005, 201, 'Suite', 250, 1),
(5006, 3006, 301, 'Deluxe', 200, 1),
(5007, 3007, 401, 'Standard', 180, 1),
(5008, 3008, 501, 'Suite', 300, 1),
(5009, 3009, 601, 'Deluxe', 220, 1),
(5010, 3010, 701, 'Standard', 170, 1),
(5011, 3011, 801, 'Suite', 280, 1),
(5012, 3012, 901, 'Deluxe', 240, 1),
(5013, 3013, 1001, 'Standard', 160, 1),
(5014, 3014, 1101, 'Suite', 270, 1),
(5015, 3015, 1201, 'Deluxe', 230, 1),
(5016, 3016, 1301, 'Standard', 190, 1),
(5017, 3017, 1401, 'Suite', 320, 1),
(5018, 3018, 1501, 'Deluxe', 260, 1),
(5019, 3019, 1601, 'Standard', 180, 1),
(5020, 3020, 1701, 'Suite', 300, 1),
(5021, 3021, 1801, 'Deluxe', 220, 1),
(5022, 3022, 1901, 'Standard', 160, 1),
(5023, 3023, 2001, 'Suite', 280, 1),
(5024, 3044, 5102, 'Standard', 180, 1),
(5025, 3045, 5202, 'Suite', 280, 1),
(5026, 3046, 5302, 'Deluxe', 230, 1),
(5027, 3047, 5402, 'Standard', 200, 1),
(5028, 3048, 5502, 'Suite', 320, 1),
(5029, 3049, 5602, 'Deluxe', 250, 1),
(5030, 3050, 5702, 'Standard', 190, 1),
(5031, 3051, 5802, 'Suite', 300, 1),
(5032, 3052, 5902, 'Deluxe', 240, 1),
(5033, 3053, 6002, 'Standard', 170, 1),
(5034, 3054, 6102, 'Suite', 290, 1),
(5035, 3055, 6202, 'Deluxe', 260, 1),
(5036, 3056, 6302, 'Standard', 180, 1),
(5037, 3057, 6402, 'Suite', 310, 1),
(5038, 3058, 6502, 'Deluxe', 270, 1),
(5039, 3059, 6602, 'Standard', 200, 1),
(5040, 3060, 6702, 'Suite', 330, 1),
(5041, 3061, 6802, 'Deluxe', 280, 1),
(5042, 3062, 6902, 'Standard', 190, 1),
(5043, 3063, 7002, 'Suite', 310, 1),
(5044, 3064, 5102, 'Standard', 180, 1),
(5045, 3065, 5202, 'Suite', 280, 1),
(5046, 3066, 5302, 'Deluxe', 230, 1),
(5047, 3067, 5402, 'Standard', 200, 1),
(5048, 3068, 5502, 'Suite', 320, 1),
(5049, 3069, 5602, 'Deluxe', 250, 1),
(5050, 3070, 5702, 'Standard', 190, 1),
(5051, 3071, 5802, 'Suite', 300, 1),
(5052, 3072, 5902, 'Deluxe', 240, 1),
(5053, 3073, 6002, 'Standard', 170, 1),
(5054, 3074, 6102, 'Suite', 290, 1),
(5055, 3075, 6202, 'Deluxe', 260, 1),
(5056, 3076, 6302, 'Standard', 180, 1),
(5057, 3077, 6402, 'Suite', 310, 1),
(5058, 3078, 6502, 'Deluxe', 270, 1),
(5059, 3079, 6602, 'Standard', 200, 1),
(5060, 3080, 6702, 'Suite', 330, 1),
(5061, 3081, 6802, 'Deluxe', 280, 1),
(5062, 3082, 6902, 'Standard', 190, 1),
(5063, 3083, 7002, 'Suite', 310, 1),
(5064, 3001, 5102, 'Standard', 180, 1),
(5065, 3002, 5202, 'Suite', 280, 1),
(5066, 3003, 5302, 'Deluxe', 230, 1),
(5067, 3004, 5402, 'Standard', 200, 1),
(5068, 3005, 5502, 'Suite', 320, 1),
(5069, 3006, 5602, 'Deluxe', 250, 1),
(5070, 3007, 5702, 'Standard', 190, 1),
(5071, 3008, 5802, 'Suite', 300, 1),
(5072, 3009, 5902, 'Deluxe', 240, 1),
(5073, 3010, 6002, 'Standard', 170, 1),
(5074, 3011, 6102, 'Suite', 290, 1),
(5075, 3012, 6202, 'Deluxe', 260, 1),
(5076, 3013, 6302, 'Standard', 180, 1),
(5077, 3014, 6402, 'Suite', 310, 1),
(5078, 3015, 6502, 'Deluxe', 270, 1),
(5079, 3016, 6602, 'Standard', 200, 1),
(5080, 3017, 6702, 'Suite', 330, 1),
(5081, 3018, 6802, 'Deluxe', 280, 1),
(5082, 3019, 6902, 'Standard', 190, 1),
(5083, 3020, 7002, 'Suite', 310, 1),
(5084, 3044, 5103, 'Standard', 180, 1),
(5085, 3045, 5203, 'Suite', 280, 1),
(5086, 3046, 5303, 'Deluxe', 230, 1),
(5087, 3047, 5403, 'Standard', 200, 1),
(5088, 3048, 5503, 'Suite', 320, 1),
(5089, 3049, 5603, 'Deluxe', 250, 1),
(5090, 3050, 5703, 'Standard', 190, 1),
(5091, 3051, 5803, 'Suite', 300, 1),
(5092, 3052, 5903, 'Deluxe', 240, 1),
(5093, 3053, 6003, 'Standard', 170, 1),
(5094, 3054, 6103, 'Suite', 290, 1),
(5095, 3055, 6203, 'Deluxe', 260, 1),
(5096, 3056, 6303, 'Standard', 180, 1),
(5097, 3057, 6403, 'Suite', 310, 1),
(5098, 3058, 6503, 'Deluxe', 270, 1),
(5099, 3059, 6603, 'Standard', 200, 1),
(5100, 3060, 6703, 'Suite', 330, 1),
(5101, 3061, 6803, 'Deluxe', 280, 1),
(5102, 3062, 6903, 'Standard', 190, 1),
(5103, 3063, 7003, 'Suite', 310, 1),
(5104, 3064, 5104, 'Standard', 180, 1),
(5105, 3065, 5204, 'Suite', 280, 1),
(5106, 3066, 5304, 'Deluxe', 230, 1),
(5107, 3067, 5404, 'Standard', 200, 1),
(5108, 3068, 5504, 'Suite', 320, 1),
(5109, 3069, 5604, 'Deluxe', 250, 1),
(5110, 3070, 5704, 'Standard', 190, 1),
(5111, 3071, 5804, 'Suite', 300, 1),
(5112, 3072, 5904, 'Deluxe', 240, 1),
(5113, 3073, 6004, 'Standard', 170, 1),
(5114, 3074, 6104, 'Suite', 290, 1),
(5115, 3075, 6204, 'Deluxe', 260, 1),
(5116, 3076, 6304, 'Standard', 180, 1),
(5117, 3077, 6404, 'Suite', 310, 1),
(5118, 3078, 6504, 'Deluxe', 270, 1),
(5119, 3079, 6604, 'Standard', 200, 1),
(5120, 3080, 6704, 'Suite', 330, 1),
(5121, 3081, 6804, 'Deluxe', 280, 1),
(5122, 3082, 6904, 'Standard', 190, 1),
(5123, 3083, 7004, 'Suite', 310, 1),
(5124, 3001, 5105, 'Standard', 180, 1),
(5125, 3002, 5205, 'Suite', 280, 1),
(5126, 3003, 5305, 'Deluxe', 230, 1),
(5127, 3004, 5405, 'Standard', 200, 1),
(5128, 3005, 5505, 'Suite', 320, 1),
(5129, 3006, 5605, 'Deluxe', 250, 1),
(5130, 3007, 5705, 'Standard', 190, 1),
(5131, 3008, 5805, 'Suite', 300, 1),
(5132, 3009, 5905, 'Deluxe', 240, 1),
(5133, 3010, 6005, 'Standard', 170, 1),
(5134, 3011, 6105, 'Suite', 290, 1),
(5135, 3012, 6205, 'Deluxe', 260, 1),
(5136, 3013, 6305, 'Standard', 180, 1),
(5137, 3014, 6405, 'Suite', 310, 1),
(5138, 3015, 6505, 'Deluxe', 270, 1),
(5139, 3016, 6605, 'Standard', 200, 1),
(5140, 3017, 6705, 'Suite', 330, 1),
(5141, 3018, 6805, 'Deluxe', 280, 1),
(5142, 3019, 6905, 'Standard', 190, 1),
(5143, 3020, 7005, 'Suite', 310, 1);
(5144, 3044, 5106, 'Standard', 180, 1),
(5145, 3045, 5206, 'Suite', 280, 1),
(5146, 3046, 5306, 'Deluxe', 230, 1),
(5147, 3047, 5406, 'Standard', 200, 1),
(5148, 3048, 5506, 'Suite', 320, 1),
(5149, 3049, 5606, 'Deluxe', 250, 1),
(5150, 3050, 5706, 'Standard', 190, 1),
(5151, 3051, 5806, 'Suite', 300, 1),
(5152, 3052, 5906, 'Deluxe', 240, 1),
(5153, 3053, 6006, 'Standard', 170, 1),
(5154, 3054, 6106, 'Suite', 290, 1),
(5155, 3055, 6206, 'Deluxe', 260, 1),
(5156, 3056, 6306, 'Standard', 180, 1),
(5157, 3057, 6406, 'Suite', 310, 1),
(5158, 3058, 6506, 'Deluxe', 270, 1),
(5159, 3059, 6606, 'Standard', 200, 1),
(5160, 3060, 6706, 'Suite', 330, 1),
(5161, 3061, 6806, 'Deluxe', 280, 1),
(5162, 3062, 6906, 'Standard', 190, 1),
(5163, 3063, 7006, 'Suite', 310, 1),
(5164, 3064, 5107, 'Standard', 180, 1),
(5165, 3065, 5207, 'Suite', 280, 1),
(5166, 3066, 5307, 'Deluxe', 230, 1),
(5167, 3067, 5407, 'Standard', 200, 1),
(5168, 3068, 5507, 'Suite', 320, 1),
(5169, 3069, 5607, 'Deluxe', 250, 1),
(5170, 3070, 5707, 'Standard', 190, 1),
(5171, 3071, 5807, 'Suite', 300, 1),
(5172, 3072, 5907, 'Deluxe', 240, 1),
(5173, 3073, 6007, 'Standard', 170, 1),
(5174, 3074, 6107, 'Suite', 290, 1),
(5175, 3075, 6207, 'Deluxe', 260, 1),

-- 600
-- Cars
INSERT INTO Car (Car_ID, Make, Model, Car_Availability, Renting_Rate)
VALUES
(601, 'Toyota', 'Camry', 1, 50),
(602, 'Honda', 'Accord', 1, 55),
(603, 'Ford', 'Fusion', 1, 60),
(604, 'Chevrolet', 'Malibu', 1, 65),
(605, 'Nissan', 'Altima', 1, 70),
(606, 'Hyundai', 'Sonata', 1, 75),
(607, 'Kia', 'Optima', 1, 80),
(608, 'Volkswagen', 'Passat', 1, 85),
(609, 'BMW', '3 Series', 1, 90),
(610, 'Mercedes-Benz', 'C-Class', 1, 95),
(611, 'Audi', 'A4', 1, 100),
(612, 'Lexus', 'ES', 1, 105),
(613, 'Infiniti', 'Q50', 1, 110),
(614, 'Cadillac', 'CTS', 1, 115),
(615, 'Lincoln', 'MKZ', 1, 120),
(616, 'Buick', 'Regal', 1, 125),
(617, 'Volvo', 'S60', 1, 130),
(618, 'Tesla', 'Model 3', 1, 135),
(619, 'Mazda', '6', 1, 140),
(620, 'Subaru', 'Legacy', 1, 145),
(621, 'Acura', 'TLX', 1, 150),
(622, 'Genesis', 'G70', 1, 155),
(623, 'Jaguar', 'XE', 1, 160),
(624, 'Land Rover', 'Discovery', 1, 165),
(625, 'Jeep', 'Grand Cherokee', 1, 170),
(626, 'Toyota', 'Corolla', 1, 175),
(627, 'Honda', 'Civic', 1, 180),
(628, 'Ford', 'Focus', 1, 185),
(629, 'Chevrolet', 'Cruze', 1, 190),
(630, 'Nissan', 'Sentra', 1, 195),
(631, 'Hyundai', 'Elantra', 1, 200),
(632, 'Kia', 'Forte', 1, 205),
(633, 'Volkswagen', 'Jetta', 1, 210),
(634, 'BMW', '2 Series', 1, 215),
(635, 'Mercedes-Benz', 'A-Class', 1, 220),
(636, 'Audi', 'A3', 1, 225),
(637, 'Lexus', 'IS', 1, 230),
(638, 'Infiniti', 'Q30', 1, 235),
(639, 'Cadillac', 'ATS', 1, 240),
(640, 'Lincoln', 'MKC', 1, 245),
(641, 'Buick', 'Envision', 1, 250),
(642, 'Volvo', 'XC40', 1, 255),
(643, 'Tesla', 'Model Y', 1, 260),
(644, 'Mazda', '3', 1, 265),
(645, 'Subaru', 'Impreza', 1, 270),
(646, 'Acura', 'ILX', 1, 275),
(647, 'Genesis', 'G80', 1, 280),
(648, 'Jaguar', 'XF', 1, 285),
(649, 'Land Rover', 'Range Rover Evoque', 1, 290),
(650, 'Jeep', 'Cherokee', 1, 295),
(651, 'Toyota', 'Rav4', 1, 300),
(652, 'Honda', 'CR-V', 1, 305),
(653, 'Ford', 'Escape', 1, 310),
(654, 'Chevrolet', 'Equinox', 1, 315),
(655, 'Nissan', 'Rogue', 1, 320),
(656, 'Hyundai', 'Tucson', 1, 325),
(657, 'Kia', 'Sportage', 1, 330),
(658, 'Volkswagen', 'Tiguan', 1, 335),
(659, 'BMW', 'X3', 1, 340),
(660, 'Mercedes-Benz', 'GLC', 1, 345),
(661, 'Audi', 'Q5', 1, 350),
(662, 'Lexus', 'NX', 1, 355),
(663, 'Infiniti', 'QX50', 1, 360);

-- 1000
-- Payment_Transactions
INSERT INTO Payment_Transactions (Transaction_ID, Transaction_Amount, Payment_Status, Transaction_Timestamp, Payment_Method, Payor_ID)
VALUES
(1001, 450, 'Completed', '2024-04-18 11:00:00', 'Credit Card', 4),
(1002, 600, 'Pending', '2024-04-19 16:30:00', 'PayPal', 5),
(1003, 350, 'Completed', '2024-04-20 09:15:00', 'Debit Card', 6),
(1004, 550, 'Pending', '2024-04-21 14:00:00', 'Credit Card', 8),
(1005, 400, 'Completed', '2024-04-22 08:45:00', 'PayPal', 9),
(1006, 700, 'Pending', '2024-04-23 12:20:00', 'Debit Card', 10),
(1007, 250, 'Completed', '2024-04-24 10:10:00', 'Credit Card', 10),

-- 1100
-- Bookings
INSERT INTO Bookings (Booking_ID, Booker_ID, Trip_ID, Rental_ID, Reservation_ID, Transaction_ID, Total_Price, Booking_Status)
VALUES
(1101, 4, NULL, 1401, NULL, 1001, 400, 'Confirmed'),
(1102, 5, 1201, 1402, NULL, 1002, 500, 'Pending'),
(1103, 6, NULL, NULL, 1301, 1003, 300, 'Confirmed'),
(1104, 8, 1202, NULL, NULL, 1004, 250, 'Confirmed'),
(1105, 9, NULL, NULL, 1302, 1005, 700, 'Pending'),
(1106, 10, 1203, NULL, NULL, 1006, 350, 'Confirmed'),
(1107, 10, 1204, 1403, 1303, 1007, 570, 'Confirmed'),

-- 1200
-- Trips
INSERT INTO Trips (Trip_ID, Type)
VALUES
(1201, 'One Way'),
(1202, 'Round Trip'),
(1203, 'One Way'),
(1204, 'One Way');

-- Trip_Flights
INSERT INTO Trip_Flights (Trip_ID, Flight_ID)
VALUES
(1201, 126),
(1202, 127),
(1202, 135),
(1203, 128),
(1204, 166);

-- 1300
-- Hotel_Reservations
INSERT INTO Hotel_Reservations (Reservation_ID, Reservation_Price, Checkin_Date, Checkout_Date, Guest_ID)
VALUES
(1301, 150, '2024-05-20', '2024-05-25', 6),
(1302, 200, '2024-06-10', '2024-06-12', 9),
(1303, 180, '2025-03-20', '2025-03-24', 10);

-- 1500
-- Room_Reservations
INSERT INTO Room_Reservations (Reservation_ID, Room_ID)
VALUES
(1301, 5013),
(1301, 5136),
(1302, 5026),
(1303, 5091);

-- Rental_Cars
INSERT INTO Rental_Cars (Rental_ID, Car_ID)
VALUES
(1401, 603),
(1402, 627),
(1403, 641);
(1403, 613);

-- 1400
-- Car_Rentals
INSERT INTO Car_Rentals (Rental_ID, Pickup_Date, Return_Date, Renter_ID)
VALUES
(1401, '2024-04-20', '2024-04-23', 4),
(1402, '2024-08-30', '2024-09-02', 5),
(1403, '2025-03-20', '2025-03-24', 10);
