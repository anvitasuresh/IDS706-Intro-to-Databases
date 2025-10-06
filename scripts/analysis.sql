
-- Look at entire table
SELECT *
FROM university_rankings;  


-- Total number of rows
SELECT COUNT(*)
FROM university_rankings;


-- Total number of USA universities in the university_rankings table
SELECT COUNT(*)
FROM university_rankings
WHERE country = 'USA';


-- Average score of all universities
SELECT AVG(score) AS average_score
FROM university_rankings;  


-- Average score of universities in the USA
SELECT AVG(score) AS average_score_usa
FROM university_rankings
WHERE country = 'USA';


-- Highest score and corresponding university
SELECT institution, country, score, year
FROM university_rankings
WHERE score = (SELECT MAX(score) FROM university_rankings);

-- Lowest score and corresponding university
SELECT institution, country, score, year
FROM university_rankings
WHERE score = (SELECT MIN(score) FROM university_rankings);


-- Number of universities are from each country
SELECT country, COUNT(*) AS university_count
FROM university_rankings
GROUP BY country
ORDER BY university_count DESC;


-- Number of distinct countries
SELECT COUNT(DISTINCT country) AS n_countries
FROM university_rankings;


-- Top 10 schools in 2015
SELECT world_rank, institution, country, score
FROM university_rankings
WHERE year = 2015
ORDER BY world_rank ASC
LIMIT 10;


-- Average Quality of Education per Country
SELECT country, 
       AVG(quality_of_education) AS avg_quality_of_education
FROM university_rankings
GROUP BY country
ORDER BY avg_quality_of_education DESC;


-- Average Influence per Country
SELECT country, 
       AVG(influence) AS avg_influence
FROM university_rankings
GROUP BY country
ORDER BY avg_influence DESC;
