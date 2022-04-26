-- Question number 1  answer: 2 

SELECT COUNT(last_name)
FROM actor 
WHERE last_name = 'Wahlberg';

-- Check that there were only two Wahlbergs
SELECT last_name 
FROM actor 
WHERE last_name = 'Wahlberg';

-- Question number 2 answer 5602
Select COUNT(amount) 
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99; 

-- Question number 3 answer: here's my code
SELECT film_id, COUNT(film_id)
FROM inventory 
GROUP BY film_id 
ORDER BY COUNT(film_id) DESC; 

-- Question number 4 answer: 0 
SELECT COUNT(last_name)
FROM customer 
WHERE last_name = 'William' 

-- Question number 5 answer: staff id = 2
SELECT staff_id, COUNT(staff_id)
FROM staff 
GROUP BY staff_id 
ORDER BY COUNT(staff_id);

--Question number 6 answer: 378 
SELECT COUNT(DISTINCT district)
FROM address 


--QUESTION number 7 answer: film_id 508
SELECT COUNT(actor_id), film_id 
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--QUESTION number 8 answer: 13 
SELECT COUNT(last_name) 
FROM customer 
WHERE last_name LIKE '%es' AND store_id = 1; 

--QUESTION number 9 answer: 3 
SELECT amount, COUNT(amount)
FROM payment 
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount 
HAVING Count(amount) > 250 
ORDER BY COUNT(amount) DESC; 

--QUESTION number 10 answer: 5 and PG-13
SELECT rating, COUNT (DISTINCT rating), COUNT(rental_rate)
FROM film
GROUP BY rating
ORDER BY COUNT(rental_rate);




