-- Find out the names of all the customers.
SELECT fname, lname from cust;

-- Print the entire customer table.
SELECT * from cust;

--  Retrieve the list of fname and the area of all the customers.
SELECT fname, area from cust;

-- List the various movie types available from the movie table.
SELECT type from movie;

--Print the information of invoice table in the following format for all records
--The Invoice No. of Customer Id. {cust - id} is {inv - no} and Movie No. is {mv - no}.
SELECT 'The Invoice No. of Customer Id' || cust_id || 'is' || inv_no || 'and movie no is' || mv_no from invoice;

--{cust-id} has taken Movie No. {mv-no} on {issue-date} and will return on (return_date).
SELECT cust_id || 'has taken movie no' || mv_no || 'on' || issue_date || 'and will return on' || return_date from invoice;

--Change the telephone number of prarnada to 466389
UPDATE cust set phone_no = 466389 WHERE fname = 'Prarnada';

--Change the issue - date of cust- id 'A01' to 24/07/93.
UPDATE invoice set issue_date = '24-jul-93' WHERE cust_id = 'a01';

--Change the price of  'gone with the wind' to Rs. 250. 00.
UPDATE movie set price = 250.00 WHERE title = 'gone with the wind';

--Delete the record with invoice number 'i08' from the invoice table.
DELETE FROM invoice WHERE inv_no='i08';

--Delete all the records having return date before 10th July'93
DELETE FROM invoice WHERE return_date < '10-jul-93';

--Change the area of cust – id 'A05' to 'vs'.
UPDATE cust set area = 'vs' WHERE cust_id='a05';

--Change the return date of invoice number 'i08' to 16-08-93.
UPDATE invoice set return_date='16-aug-93' WHERE inv_no='i08';

--Find the names of all customers having 'a' as the second letter in their fnames.
SELECT fname, lname from cust WHERE fname LIKE '_a%';

--Find the lnames of all customers that begin with 's ' or  'j'
SELECT lname FROM cust WHERE lname LIKE 'S%' OR lname LIKE 'J%';

-- Find out the customers who stay in an area whose second letter is 'a'.
SELECT * from cust WHERE area LIKE '_a';

--Find the list of all customers who stay in area 'da' or area 'mu' or area 'gh'.
SELECT * FROM cust WHERE area IN('da', 'mu', 'gh');

--Print the list of customers whose phone numbers are greater than the value 5550000.
SELECT * FROM cust WHERE phone_no>5550000;

--Print the information from invoice table of customers who have been issued movies in the month of September.
SELECT * FROM invoice WHERE issue_date LIKE '%SEP%';

--Display the invoice table information for cust – id 'a01' and 'a02'.
SELECT * from invoice WHERE cust_id IN ('a01', 'a02');

--Find the movies of type 'action' and ‘comedy’.
SELECT title FROM movie WHERE type in('action', 'comedy');

--Find the movies whose price is greater than 150 and less than or equal to 200.
SELECT title FROM movie WHERE price > 150 AND price<= 200;

--Find the movies that cost more than 150 and also find the new cost as original cost*15.
SELECT price*15 FROM movie WHERE price>150;

--Rename the new column in the above query as new-price.
SELECT price*15 'New Price' WHERE price>150;

--List the movies in sorted order of their titles.
SELECT * FROM movie ORDER BY title;

--Print the names and types of all the movie except horror movies.
SELECT title, type FROM movie WHERE type <> 'horror';

--Divide the cost of movie 'home alone' by difference between its price and 100.
SELECT price/(price-100) FROM movie WHERE title='home alone';

--List the names, areas and cust - id of customers without phone numbers.
SELECT fname, lname, area, cust_id FROM cust WHERE phone_no is NULL;

--List the names of customers without lname.
SELECT fname FROM cust WHERE lname=' ';

--List the mv - no, title, type of movies whose stars begin with letter 'm'.
SELECT mv_no, title, type FROM movie WHERE star LIKE 'm%';

--List the mv-no and inv-no of customers having inv-no less than 'i05'from the Invoice Transaction Table.
SELECT mv_no, inv_no FROM invoice WHERE inv_no<'i05';