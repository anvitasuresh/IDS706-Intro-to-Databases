# IDS706-Intro-to-Databases

## Project Overview

This repository explores the University Ranking Dataset using SQLite, demonstrating the usage of various database operations. It involves connecting to the database, running analysis queries to explore and interpret the data, and performing CRUD (Create, Read, Update, Delete) operations. 


## Set Up Instructions

1. First, download the SQLite database into the folder you are working in on VSCode. 
2. Install the SQLite extension on VSCode to connect to the database.
3. Create new .sql files in the workspace for running all queries. To execute the queries, open the command pallet with `Command + Shift + P` and then select `SQLite: Run Query`. You can also highlight the code you want to execute, right click, and select `Run Query`.


## Simple Analysis

To explore and summarize the dataset, I ran various queries. To start, I looked at the entire table to see how it was structured and what variables are involved. I then wanted to see how many total universities there were (2200) as well as how many unicersities there were from the United States (573) since it seemed to be a common country in the table. Then I looked at the score of the schools so I found the average score of all schools (47.798) as well as the average score of United States schools (51.84) -- this shows that universities from the United States tend to score higher on average than the global mean. I also wanted to see what the highest and lowest scores were as well as which schools they were corresponded with (Harvard with 100 score and Mines ParisTech with 43.36 score)

Furthermore, I wanted to see the composition of countries in relation to schools so I found the university count of each country (USA with the most at 573) as well as the number of unique countries in the dataset (59). I also wanted to see the ranking of countries in the most recent year of 2015 so we could see which schools have had high standings (Harvard, Stanford, MIT, etc). Lastly, I wanted to analyze the average quality of education and average influence for each country which could help us see how countries are represented on a global educational scale. 

## CRUD Operations

CRUD stands for Create (add new entries), Read (look at existing entires), Update (modify existing entries), and Delete (remove entires from database), representing the four core actions in database management.

### Create

First, since the ranking committee has published new results for a new university in 2014, I inserted this university into the database.

```bash
INSERT INTO university_rankings (institution, country, world_rank, score, year)
VALUES ('Duke Tech', 'USA', 350, 60.5, 2014);
```

### Read

Then, we wanted to see how many universities from Japan show up in the global top 200 in 2013. 

```bash
SELECT institution
FROM university_rankings
WHERE country = 'Japan' AND year = 2013 AND world_rank <= 200;
```

The results showed that there are 6 universities: University of Tokyo, Kyoto University, Osaka University, Keio Universiy, Nagoya University, and Tohoku University. 

### Update
Now, we want to change the score for University of Oxford in 2014 by increasing it by +1.2 points.

```bash
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford' AND year = 2014;
```

The score was updated from 97.51 to 98.71.

### Delete
Now, we want to remove schools with score below 45 in 2015. 

```bash
DELETE FROM university_rankings
WHERE score < 45 AND year = 2015;
```

The number of rows went from 2200 to 1645, meaning that there were 555 school with scores below 45 in 2015. 