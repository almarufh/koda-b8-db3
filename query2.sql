SELECT "m"."name", "mg"."genre", "d"."first_name", "d"."last_name" FROM "movies" "m"
JOIN "movies_directors" "md" ON "m"."id" = "md"."movie_id"  
JOIN "directors" "d" ON "d"."id" = "md"."director_id"
JOIN "movies_genres" "mg" ON "m"."id" = "mg"."movie_id";

SELECT "a"."first_name", "a"."last_name", "r"."role", "m"."name" FROM "actors" "a"
JOIN "roles" "r" ON "r"."actor_id" = "a"."id"
JOIN "movies" "m" ON "m"."id" = "r"."movie_id";