create database ola;
use ola;
create view Successful_Bookings as
select * from bookings
WHERE Booking_status = 'Success';
select * from Successful_Bookings

Create View ride_distance_for_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;
Create View cancelled_rides_by_customers As
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'canceled by Customer';

Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

Create View UPI_Payment As
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;
Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

#1. Retrieve all successful bookings:
Select * From Successful_Bookings;
#2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;
#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;
#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Rides_cancelled_by_Drivers_P_C_Issues;
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Driver_Rating;
#7. Retrieve all rides where payment was made using UPI:
Select * from UPI_Payment;
#8. Find the average customer rating per vehicle type:
Select * from AVG_Cust_Rating;
#9. Calculate the total booking value of rides completed successfully:
Select * from total_successful_ride_value;
#10. List all incomplete rides along with the reason:
Select * from Incomplete_Rides_Reason;






















