SELECT "name", "year" 
FROM movies 
WHERE year > 2000;

SELECT concat("first_name", ' ', "last_name") 
FROM "actors" 
WHERE "last_name" 
LIKE '%s';

SELECT "name", "year", "rankscore"
FROM "movies" 
WHERE "rankscore" BETWEEN 5 AND 7 
  AND "year" BETWEEN 2004 AND 2006;

SELECT concat(COUNT("rankscore"), ' ', 'movies') AS "Rating 6"
FROM "movies"
WHERE "rankscore" = 6
GROUP BY "rankscore";
