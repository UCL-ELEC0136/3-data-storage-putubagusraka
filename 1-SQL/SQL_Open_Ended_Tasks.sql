-- 1. All the details about the cities.
-- 2. The temperatures in Odense on the day 05/07/1980.
-- 3. The dates and the wind speed when the wind direction was 100 in the city of Aalborg.
-- 4. The name of all the cities and their respective populations.
-- 5. The name of cities that have had temperatures lower than -15 Celsius.
-- 6. The latitude and longitude of cities that have temperatures lower than - Celsius.

--task 1
select * from city_details

--task 2
select temp from city_weather where city = 'Odense' and datetime like  '05/07/1980%'

--task 3
-select datetime, windspeed from city_weather where winddir = 100 and city = 'Aalborg'

--task 4
select city,population from city_details

--task 5
select distinct city from city_weather where temp<-15

--task 6
select city,latitude,longitude from city_details where city in (select distinct city from city_weather where temp<-15)