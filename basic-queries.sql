USE sakila;

SELECT title, release_year FROM film LIMIT 5; #own test 


SHOW TABLES; #list every table in the database

SELECT COUNT(*)
FROM information_schema.tables
WHERE table_schema = 'sakila'; #counting the number of tables

#Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#Display all available tables in the Sakila database.
SHOW FULL TABLES;

#3 - Select specific films

# 3.1 Titles of all films from the film table
SELECT title
FROM film;

# 3.2 List of languages used in films, with the column aliased as language from the language table
DESCRIBE language;

SELECT name AS language
FROM language;

#3.3 List of first names of all employees from the staff table
DESCRIBE staff;

SELECT first_name
FROM staff;

#4
#Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;

#5
#5.1 Determine the number of stores that the company has

SHOW TABLES LIKE '%store%'; #wildcard search: it returns only table names containing "store"

SELECT COUNT(*)
FROM store; #Counting the number of stores

# 5.2 Determine the number of employees that the company has.
SELECT COUNT(*)
FROM staff;

# 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*)
FROM inventory; #4581 phisical copies

SELECT COUNT(*)
FROM rental; #16044 rental transactions

#but how many are films?

DESCRIBE inventory; #check columns, the content in a TABLE (OR)
SHOW COLUMNS FROM inventory;

SELECT COUNT(DISTINCT film_id)
FROM inventory; #958 films


#5.4 Determine the number of distinct last names of the actors in the database

DESCRIBE actor;

SELECT COUNT(DISTINCT last_name)
FROM actor; #121 actors' surnames

SELECT COUNT(last_name)
FROM actor; #200 actors

#Retrieve the 10 longest films

DESCRIBE film; #To find the colum with the duration of fims within the "film" table: It's lenght

SELECT title, length #lenght without parenthesis is trated as a column (it's also a function)
FROM film
ORDER BY length DESC
LIMIT 10; #Result - the ten longest movies by duration



#7.1 Retrieve all actors with the first name "SCARLETT"

SELECT first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';



