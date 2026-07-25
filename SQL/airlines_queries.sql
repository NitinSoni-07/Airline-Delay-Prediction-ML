-- SELECT * FROM flight_db.airline_delay_cleaned;
-- use flight_db
-- Total flights by airline
-- select carrier_name, sum(arr_flights) As Total_flights from airline_delay_cleaned
-- group by carrier_name
-- order by Total_flights;

-- Top 10 airlines with the highest delays

-- SELECT carrier_name, SUM(arr_delay), sum(arr_flights) AS total_delay
-- FROM airline_delay_cleaned
-- GROUP BY carrier_name
-- ORDER BY total_delay DESC;


-- Top 10 airports with the highest delays
-- select airport, sum(arr_delay) AS Total_Del_flight from airline_delay_cleaned
-- group by airport 
-- order by Total_Del_flight asc
-- limit 10

-- CANCELLATION DELAY 
-- select carrier_name, sum(arr_cancelled) AS Total_Cancelled from airline_delay_cleaned
-- group by carrier_name
-- order by Total_cancelled desc limit 10 

-- DELAY REGION WISE 
-- SELECT
--     SUM(carrier_delay) AS carrier_delay,
--     SUM(weather_delay) AS weather_delay,
--     SUM(nas_delay) AS nas_delay,
--     SUM(security_delay) AS security_delay,
--     SUM(late_aircraft_delay) AS late_aircraft_delay
-- FROM airline_delay;

-- YEAR WISE DELAY
-- select year, sum(arr_delay) As Total_delay from airline_delay_cleaned
-- group by year
-- order by Total_delay

-- MONTH  WISE DELAY
-- select month, sum(arr_delay) As Total_delay from airline_delay_cleaned
-- group by month 
-- order by Total_delay desc limit 10

-- AVERAGE DELAY 
-- elect carrier_name, round( sum(arr_delay)/sum(arr_flights),2) as Average_flights from airline_delay_cleaned
-- group by carrier_name
-- order by Average_flights desc



-- Q1. Total Number of Records
-- select count(*) as Total_records from airline_delay_cleaned 

-- Q2. Distinct Airlines
-- select  distinct carrier_name from airline_delay_cleaned

-- Q3. Distinct Airports
-- select distinct airport from airline_delay_cleaned 

-- Year-wise Records
-- select year, count(*) AS Total_record from airline_delay_cleaned
-- group by year

-- Month-wise Records
-- select month, count(*) AS Total_Record from airline_delay_cleaned
-- group by month
-- order by month asc

--                 AGGREGRATION             --  

-- Total Flights by Airline

-- Select carrier_name, sum(arr_flights) AS Total_flight from airline_delay_cleaned
-- group by carrier_name
-- order by carrier_name ASC, Total_flight;
-- SELECT SUM(arr_flights) AS total_flights
-- FROM airline_delay;

-- Total Flights by Airport

-- select airport, sum(arr_flights) AS Total_flights from airline_delay_cleaned
-- group by airport 

--  Q8. Average Arrival Delay by Airline
-- select carrier_name,  round( avg(arr_delay),2) AS Average_delay from airline_delay_cleaned
-- group by carrier_name 


--  Q9. Total Arrival Delay by Airline

-- select carrier_name, sum(arr_delay) as Total_arrival_delay from airline_delay_cleaned
-- group by carrier_name 
-- order by Total_arrival_delay Asc 

-- Q10. Average Arrival Delay by Month

-- select month, round(avg(arr_delay),2) as Average_delay from airline_delay_cleaned
-- group by month 
-- order by month  
                                         -- Delay Analysis --
                                         
-- 11 Airline with Highest Carrier Delay
-- select carrier_name, sum(carrier_delay) as Total_carr_delay from airline_delay_cleaned 
-- group by carrier_name 
-- order by Total_carr_delay desc
-- limit 1

-- Q12. Airport with Highest Arrival Delay
-- select airport, sum(arr_delay) as Total_arr_delay from airline_delay_cleaned 
-- group by airport 
-- order by Total_arr_delay desc
-- limit 1 

-- Month with Highest Delay
-- select month, sum(arr_delay) As Total_delay from airline_delay_cleaned
-- group by month 
-- order by Total_delay desc
-- limit 1


                                   --  Cancellation & Diversion  --
                                   

-- Q14. Weather Delay by Month
-- select  month, sum( weather_delay) weather_delay from airline_delay_cleaned 
-- group by month
-- order by weather_delay desc
-- limit 1

-- Q15 NAS Delay by Airline
-- select carrier_name, sum(nas_delay) as Total_Nas_delay
-- from airline_delay_cleaned
-- group by carrier_name
-- order by Total_Nas_delay desc

-- Q16 Late Aircraft Delay by Airline
-- select carrier_name, sum(late_aircraft_delay) as Late_aircraft from airline_delay_cleaned
-- group by carrier_name
-- order by Late_aircraft desc

-- Q17. Security Delay by Airport
-- select airport, sum( security_delay) as Total_security_delay  from airline_delay_cleaned
-- group by airport
-- order by Total_security_delay desc

                              -- Cancellation & Diversion -- 


-- Total cancelled flights by airline

-- select carrier_name, sum( arr_cancelled) As Total_cancelled 
-- from airline_delay_cleaned 
-- group by carrier_name
-- order by Total_cancelled desc


-- Total diverted flights by airline

-- select carrier_name, sum( arr_diverted) as arr_diverted from airline_delay_cleaned 
-- group by carrier_name
-- order by arr_diverted desc

-- Cancellation by month

-- select month, sum( arr_cancelled ) as Airline_cancelled from airline_delay_cleaned 
-- group by month
-- order by airline_cancelled desc

                                                                     -- Ranking  --
                                                                     
-- Top 10 airlines by delay

-- select carrier_name, sum(arr_delay) as Total_delay from airline_delay_cleaned
-- group by carrier_name
-- order by Total_delay desc
-- limit 10

-- Top 10 airports by delay

-- select airport, sum(arr_delay) as Total_delay from airline_delay_cleaned 
-- group by airport
-- order by Total_delay desc

-- Top 5 months with highest delays

-- select month, sum(arr_delay) as Total_delay from airline_delay_cleaned
-- group by month
-- order by Total_delay desc 
-- limit 5;

                                                              -- Advanced --
                                                              
-- 	Percentage of delayed flights by airline

-- SELECT
--     carrier_name,
--     SUM(arr_delay) AS total_delay,
--     SUM(arr_flights) AS total_flights,
--     ROUND((SUM(arr_delay) / SUM(arr_flights)) * 100, 2) AS delay_percentage
-- FROM airline_delay_cleaned
-- GROUP BY carrier_name
-- ORDER BY delay_percentage DESC;

-- Rank airlines by total arrival delay

-- select carrier_name, sum(arr_delay) as Total_arrival_delay,
-- rank() over( order by  sum(arr_delay) desc) as airline_Rank
-- from airline_delay_cleaned
-- group by carrier_name 


-- SELECT SUM(arr_flights) AS total_flights
-- FROM airline_delay;
-- SELECT SUM(arr_delay) AS total_delay
-- FROM airline_delay;


-- select carrier_name, sum(arr_delay) as total_arr_delay
-- from airline_delay_cleaned
-- group by carrier_name
-- order by total_arr_delay desc;



