CREATE SCHEMA CARS ;
USE CARS;

 -- READ DATA --
 SELECT*FROM car_dekho;
 
 -- TO GET A COUNT OF TOTAL RECORDS --
 SELECT count(*) FROM car_dekho;
 
 -- how many cars will be available in 2023--
 SELECT count(*) FROM car_dekho WHERE YEAR = 2023;
 
 -- HOW MANY CARS ARE AVAILABLE IN 2020,2021,2022? --
 SELECT count(*) FROM car_dekho WHERE YEAR = 2020;
 SELECT count(*) FROM car_dekho WHERE YEAR = 2021;
 SELECT count(*) FROM car_dekho WHERE YEAR = 2022;
 
 -- GROUP BY --
 SELECT count(*) FROM car_dekho WHERE YEAR IN (2020,2021,2022) GROUP BY YEAR;
 
 -- CLIENT ASKED TOTAL CARS BY YEAR--
 SELECT YEAR,count(*) FROM  car_dekho group by year;
 
 -- HOW MANY DIESEL CARS WILL BE THERE IN 2020 --
 SELECT count(*) FROM car_dekho WHERE YEAR = 2020  AND fuel = "Diesel";
 
 -- how many petrol cars are there in the data and group it by year --
 SELECT YEAR,count(*) FROM car_dekho WHERE fuel = "PETROL" GROUP BY YEAR;
 
 -- how many diesel car are there in the data and groyp it by year --
 SELECT YEAR,count(*) FROM  car_dekho WHERE fuel ="DIESEL" GROUP BY YEAR;
 
 -- find selling price and count of that selling price how many times it sold --
SELECT selling_price, COUNT(*) FROM car_dekho GROUP BY selling_price;

-- find average selling price--
SELECT AVG(selling_price) AS average_selling_price FROM car_dekho;






