-- queries.sql

-- Check available seats
SELECT available_seats FROM Showtimes WHERE show_id = 1;

-- Calculate total revenue
SELECT show_date, SUM(amount) AS total_revenue
FROM Bookings
JOIN Showtimes ON Bookings.show_id = Showtimes.show_id
WHERE status = 'Booked'
GROUP BY show_date;
