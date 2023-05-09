-- Below is an example of a division query
-- QUESTION:
-- How many movies produced in 2011 have entries registered in involved for all roles defined in the roles relation?

select count(*)
from
    (SELECT movie.title
     FROM movie
     JOIN involved ON involved.movieid = movie.id
     WHERE movie.year = 2011
     GROUP by movie.id
     HAVING count(distinct involved."role") =
         (select count(DISTINCT involved."role") s
          from involved)) t;

-- Below is an example of a division query
-- QUESTION: How many people have played a role in movies of all genres in the category ‘Popular’?

SELECT count(DISTINCT t.c)
FROM
    (SELECT involved.personid c
     FROM involved
     INNER JOIN movie ON involved.movieid = movie.id
     INNER JOIN movie_genre ON movie_genre.movieid = movie.id
     INNER JOIN genre ON genre.genre = movie_genre.genre
     WHERE genre.category = 'Popular'
     GROUP BY involved.personid
     HAVING count(DISTINCT genre.genre) =
         (SELECT count(genre.genre)
          FROM genre
          WHERE genre.category = 'Popular')) t;

-- Below is an example of a subquery using the IN operator (which only returns movies that Roger Spottiswoode directed)
-- QUESTION: How many different people acted in movies directed by ‘Roger Spottiswoode’?

SELECT count(DISTINCT personid)
FROM involved
WHERE involved."role" = 'actor'
    AND involved.movieid IN
        (SELECT movieid
         FROM involved
         INNER JOIN person ON involved.personid = person.id
         where person."name" = 'Roger Spottiswoode'
             and involved."role" = 'director' );