show databases;
create database rapido;
use rapido;
 
use rapido;

select * from booking;

-- SQL Questions
-- 1. Retrieve all successful bookings:
select * from booking
where booking_status = 'Success';


-- 2. Find the average ride distance for each vehicle type:
select avg(ride_distance), vehicle_type from booking
group by vehicle_type;


-- 3. Get the total number of cancelled rides by customers:
select count(booking_status) from booking
where booking_status = 'Canceled by Driver';


-- 4. List the top 5 customers who booked the highest number of rides:
select count(booking_id) as total_ride, customer_id from booking
group by customer_id
order by total_ride
limit 5;


-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(canceled_rides_by_driver) from booking
where canceled_rides_by_driver = 'Personal & Car related issues';


-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(driver_ratings), min(driver_ratings) from booking
where vehicle_type = 'Prime Sedan'; 


-- 7. Retrieve all rides where payment was made using UPI:
select * from booking
where payment_method = 'UPI';


-- 8. Find the average customer rating per vehicle type:
select vehicle_type, avg(customer_rating) as Avg_customer_Rating
from booking
group by vehicle_type
order by Avg_customer_Rating desc;


-- 9. Calculate the total booking value of rides completed successfully:
select sum(booking_value) as Total_Booking_Value, booking_status
from booking
where booking_status = 'Success';


-- 10. List all incomplete rides along with the reason:
select incomplete_rides, incomplete_rides_reason from booking
where incomplete_rides = 'Yes';



