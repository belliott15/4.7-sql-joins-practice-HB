-- the average film length by category
-- include the category name and avg length
SELECT category.name, AVG(film.length) AS avg FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name 