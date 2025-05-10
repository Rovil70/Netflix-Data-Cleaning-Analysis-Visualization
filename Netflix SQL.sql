create database netflix;
use netflix;
select * from netflix_titles;

/*Count of Movies vs TV Shows*/
SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;


/*Top 10 Countries by Content*/
SELECT country, COUNT(*) AS total
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;


/*Number of Titles per Year*/
SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;


/*Most Common Ratings*/
SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;

/*Top 10 Directors by Count*/

SELECT director, COUNT(*) AS total
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total DESC
LIMIT 10;


/*Top Genres*/
SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;
















