-- 1,How many actors are there with the last name ‘Wahlberg’?
SELECT first_name,last_name
FROM actor 
WHERE last_name LIKE '%Wahlberg%';

-- 2,How many payments were made between $3.99 and $5.99?
SELECT *
FROM payment 
WHERE amount >= 3.99 AND amount <=5.99;


-- 3,What film does the store have the most of? (search in inventory)

SELECT MAX(inventory_id)
FROM  inventory



--4, How many customers have the last name ‘William’?

SELECT COUNT (*)
FROM customer
WHERE last_name = 'William';

-- 5,What store employee (get the id) sold the most rentals?
SELECT staff_id
FROM rental
GROUP BY staff_id
ORDER BY COUNT (staff_idDESC
LIMIT 1;

-- 6,How many different district names are there?

SELECT COUNT (DISTINCT district)
FROM address;
 

--7, What film has the most actors in it? (use film_actor table and get film_id)
 SELECT film_id,count(actor_id)
 FROM film_actor
 GROUP BY film_id 
 ORDER BY COUNT DESC;


-- 8,From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT first_name,last_name
FROM customer
WHERE last_name LIKE '%es';


--9, How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 480
GROUP BY amount
HAVING COUNT(*) > 250;

-- 10, Within the film table, how many rating categories are there? And what rating has the most movies total?

SELECT rating, count(*) AS title 
FROM film
GROUP BY rating
ORDER BY title DESC;






