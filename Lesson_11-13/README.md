Split the table "star_wars" into parts and lerned how to use LEFT, RIGHT, INNER and FULL joins.

JOIN films:
____________________________________________________________________________________________________________________________________________
SELECT id, film_part, film_year, film_director, actors FROM star_wars INNER JOIN films_years USING (film_year_id) LEFT JOIN films_directors USING (film_director_id) RIGHT JOIN actors_table USING (actors_id);
____________________________________________________________________________________________________________________________________________

create table "all_in" to join all data.

JOIN authors:

