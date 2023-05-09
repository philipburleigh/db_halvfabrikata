-- Below is an example of a  division query 
-- Of all the movies produced in 2002, there are 282 that have entries registered in involved for all roles defined in the roles relation. 
-- How many movies produced in 2011 have entries registered in involved for all roles defined in the roles relation?
select count(*)
from (
        SELECT movie.title
        FROM movie
            JOIN involved ON involved.movieid = movie.id
        WHERE movie.year = 2011
        GROUP by movie.id
        HAVING count(distinct involved."role") = (
                select count(DISTINCT involved."role")
                from involved
            )
    ) t