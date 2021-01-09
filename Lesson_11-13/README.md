Split the table "star_wars" into parts and lerned how to use LEFT, RIGHT, INNER and FULL joins.

JOIN films:
____________________________________________________________________________________________________________________________________________
SELECT id, film_part, film_year, film_director, actors FROM star_wars INNER JOIN films_years USING (film_year_id) LEFT JOIN films_directors USING (film_director_id) RIGHT JOIN actors_table USING (actors_id);
____________________________________________________________________________________________________________________________________________

create table "all_in" to join all data.

JOIN authors:

SELECT title, genre, name, year FROM all_in FULL JOIN books ON (all_in.title_id = books.id) FULL JOIN genres ON (all_in.genre_id = genres.id) FULL JOIN authors ON (all_in.author_id = authors.id);