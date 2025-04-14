-- schema.sql

CREATE DATABASE MovieBookingDB;

USE MovieBookingDB;

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(100),
    duration INT,
    release_date DATE
);

CREATE TABLE Theaters (
    theater_id INT PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    total_seats INT
);

CREATE TABLE Showtimes (
    show_id INT PRIMARY KEY,
    movie_id INT,
    theater_id INT,
    show_date DATE,
    show_time TIME,
    available_seats INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (theater_id) REFERENCES Theaters(theater_id)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(15)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    show_id INT,
    seats_booked INT,
    booking_date DATE,
    status VARCHAR(50),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (show_id) REFERENCES Showtimes(show_id)
);
