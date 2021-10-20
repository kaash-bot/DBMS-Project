CREATE DATABASE IF NOT EXISTS movie_db;
USE movie_db;

-- Primary Tables
CREATE TABLE Admin (
    admin_id INT NOT NULL,
    pwd VARCHAR(20) NOT NULL, 
    PRIMARY KEY (admin_id) 
);

CREATE TABLE Customer (
    cust_id INT NOT NULL,
    pwd VARCHAR(20) NOT NULL,  
    cust_name VARCHAR(20), 
    email_id VARCHAR(20) UNIQUE,
    PRIMARY KEY (cust_id) 
);

CREATE TABLE Seats (
    seat_id INT NOT NULL,
    seat_name VARCHAR(10) UNIQUE,  
    booked BOOLEAN DEFAULT False,
    PRIMARY KEY (seat_id) 
);

CREATE TABLE Movie (
    movie_id INT NOT NULL, 
    release_date DATE, 
    movie_name VARCHAR(20), 
    PRIMARY KEY (movie_id) 
);

CREATE TABLE Screening (
    screening_id INT NOT NULL,
    start_time DATETIME, 
    end_time DATETIME, 
    PRIMARY KEY (screening_id) 
);

CREATE TABLE Offers (
    offer_id INT NOT NULL, 
    movie VARCHAR(20),
    PRIMARY KEY (offer_id) 
);

CREATE TABLE Tickets (
    ticket_id INT NOT NULL, 
    seat_id INT NOT NULL, 
    admin_id INT NOT NULL,
    offer_id INT NOT NULL, 
    price DOUBLE, 
    PRIMARY KEY (ticket_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id),
    FOREIGN KEY (offer_id) REFERENCES Offers(offer_id),
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id) 
);

CREATE TABLE Theatre (
    theatre_id INT NOT NULL,
    admin_id INT NOT NULL, 
    theatre_name VARCHAR(255), 
    theatre_loc VARCHAR(255) DEFAULT 'Bangalore',
    capacity INT DEFAULT 240,
    PRIMARY KEY (theatre_id),
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);

-- Lookup Tables for m:n mappings

CREATE TABLE Theatre_seat_lookup (
    seat_id INT NOT NULL,
    theatre_id INT NOT NULL,
    PRIMARY KEY (seat_id, theatre_id),
    FOREIGN KEY (seat_id) REFERENCES Seats(seat_id),
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id) 
);

CREATE TABLE Ticket_screening_lookup (
    ticket_id INT NOT NULL,
    screening_id INT NOT NULL,
    PRIMARY KEY (ticket_id, screening_id),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (screening_id) REFERENCES Screening(screening_id) 
);

CREATE TABLE Booking (
    cust_id INT NOT NULL,
    ticket_id INT NOT NULL,
    b_id INT NOT NULL,
    b_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (cust_id, ticket_id, b_id),
    FOREIGN KEY (cust_id) REFERENCES Customer(cust_id),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id) 
);

CREATE TABLE Ticket_theatre_lookup (
    ticket_id INT NOT NULL,
    theatre_id INT NOT NULL,
    PRIMARY KEY (ticket_id, theatre_id),
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id) 
);

CREATE TABLE Screening_movie_lookup (
    screening_id INT NOT NULL,
    movie_id INT NOT NULL,
    PRIMARY KEY (screening_id, movie_id),
    FOREIGN KEY (screening_id) REFERENCES Screening(screening_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) 
);

-- Multi Valued Attributes mappings

CREATE TABLE Discounts (
    d_id INT NOT NULL,
    discount DOUBLE DEFAULT 0,
    PRIMARY KEY (d_id),
    FOREIGN KEY (d_id) REFERENCES Offers(offer_id)
);

CREATE TABLE Directors (
    movie_id INT,
    D_Name VARCHAR(20),
    PRIMARY KEY (movie_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) 
);

CREATE TABLE Actors (
    movie_id INT, 
    A_name VARCHAR(20),
    PRIMARY KEY (movie_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) 
);

CREATE TABLE M_Language (
    movie_id INT,
    M_Lang VARCHAR(10),
    PRIMARY KEY (movie_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id) 
);

CREATE TABLE Phone_no (
    cust_id INT,
    -- store phone no as varchar for easier length checking
    phone_num VARCHAR(10) UNIQUE,
    PRIMARY KEY (cust_id),
    FOREIGN KEY (cust_id) REFERENCES Customer(cust_id) 
);
