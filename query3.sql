SELECT concat("d"."first_name", ' ', "d"."last_name") AS "Director", COUNT("mg"."genre") AS "total" FROM "directors" "d"
JOIN "movies_directors" "md" ON "d"."id" = "md"."director_id"
JOIN "movies_genres" "mg" ON "mg"."movie_id" = "md"."movie_id"
GROUP BY "d"."first_name", "d"."last_name";

SELECT "a"."first_name", "a"."last_name", COUNT("r"."role") AS "total" FROM "actors" "a"
JOIN "roles" "r" ON "a"."id" = "r"."actor_id"
GROUP BY "a"."first_name", "a"."last_name"
HAVING COUNT("r"."role") > 5;

SELECT concat("d"."first_name", ' ', "d"."last_name") AS "Director", COUNT("m"."id") AS "Total" FROM "directors" "d"
JOIN "movies_directors" "md" ON "md"."director_id" = "d"."id"
JOIN "movies" "m" ON "m"."id" = "md"."movie_id"
GROUP BY "d"."first_name", "d"."last_name"
ORDER BY "Total" DESC
LIMIT 1;

SELECT 
    "m"."name", 
    STRING_AGG (
    "mg"."genre",
    ', ' 
        ORDER BY
        "mg"."genre"
    )
FROM "movies" "m"
JOIN "movies_genres" "mg" ON "m"."id" = "mg"."movie_id" 
GROUP BY 
    "m"."name"