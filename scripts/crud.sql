-- CREATE: insert new university into database
SELECT *
FROM university_rankings;

INSERT INTO university_rankings (institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);


-- READ: Universities from Japan that show up in the global top 200 in 2013
SELECT institution
FROM university_rankings
WHERE country = 'Japan' AND year = 2013 AND world_rank <= 200;


-- UPDATE: increase the score for University of Oxford in 2014 by +1.2 points
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford' AND year = 2014;

-- DELETE: remove  scores below 45 in 2015
DELETE FROM university_rankings
WHERE score < 45 AND year = 2015;
