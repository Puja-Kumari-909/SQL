--Calculate the square root of the price of each movie.
SELECT SQRT(price) FROM movie;

--Count the total number of customers.
SELECT COUNT(cust_id) FROM cust;

-- Calculate the total price of all the movies.
SELECT SUM(price) FROM movie;

--Calculate the average price of all the movies.
SELECT AVG(price) FROM movie;

-- Determine the maximum and minimum movie prices. Rename the title as max-price and min_price respectively.
SELECT MAX(price) "max-price", MIN(price) "min-price" FROM movie;

--Count the number of movies having price greater than or equal to 150.
SELECT COUNT(mv_no) FROM movie WHERE price>=150;

--Print the type and average price of each type of movie.
SELECT type, AVG(price) FROM movie GROUP BY type;

--Find the number of movies in each type.
SELECT type,COUNT(type) FROM movie GROUP BY type;

--Count separately the number of movies in the 'comedy' and 'thriller' types.
SELECT type, COUNT(type) FROM movie GROUP BY type HAVING type IN('comedy', 'thriller');

--Calculate the average price for each type that has a maximum price of 150.00.
SELECT type, AVG(price) FROM movie WHERE price<=150 GROUP BY type;

/*Calculate the average price of all movies where type is 'comedy' or 
'thriller' and price is greater than or equal to 150.00.*/
SELECT type, AVG(price) FROM movie WHERE price>=150 GROUP BY type HAVING type IN('comedy', 'thriller');

--Display the invoice number and day on which customers were issued movies.
SELECT inv_no, issue_date FROM invoice;

--Display the month (in alphabets) in which customers are supposed to return the movies.
SELECT TO_CHAR(return_date, 'dd-month-yy') FROM invoice;

--Display the 15 days after the issue-date in the format 'dd-month-yy'.
SELECT TO_CHAR(return_date+15, 'dd-month-yy') FROM invoice;

--Find the number of days elapsed between the current date and the return date of the movie for all customers.
SELECT SYSDATE-return_date FROM invoice;