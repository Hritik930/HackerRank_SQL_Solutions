# HackerRank Solutions
Questions and solutions
## Index
- [SQL](#sql)
  - [Basic Select](#basic-select)
    - [Higher Than 75 Marks](#higher-than-75-marks)
  - [Alternative Queries](#alternative-queries)
    - [Draw the Triangle 1](#draw-the-triangle-1)
  - [Basic Join](#basic-join)
    - [Challenges](#challenges)
  
## SQL
### Basic Select
#### Easy
##### Higher Than 75 Marks

Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

###### Input Format
The STUDENTS table is described as follows:  The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

| Column      | Type        |  
| ----------- | ----------- |
| ID          | Integer     |
| Name        | String      |
| Marks       | Integer     |

###### Solution
```SQL
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC
```
### Alternative Queries
#### Easy
##### Draw the Triangle 1
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
```
* * * * * 
* * * * 
* * * 
* * 
*
```

Write a query to print the pattern P(20).

###### Solution

```SQL
SET @P = '* ';
SET @i = 21;
SELECT REPEAT(@P, @i := @i - 1)
FROM INFORMATION_SCHEMA.TABLES LIMIT 20;
```

### Basic Join
#### Mediium
##### Challenges

Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

###### Input Format

The following tables contain challenge data:
- Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

| Column      | Type        |  
| ----------- | ----------- |
| hacker_id   | Integer     |
| name        | String      |

- Challenges: The challenge_id is the id of the challenge, and hacker_id is the id of the student who created the challenge.

| Column       | Type        |
| -----------  | ----------- |
| challenge_id | Integer     |
| hacker_id    | Integer     |

###### Solution

```SQL
SELECT Hackers.hacker_id, Hackers.name, COUNT(Challenges.challenge_id)
FROM Hackers
JOIN Challenges 
ON Hackers.hacker_id = Challenges.hacker_id
GROUP BY Hackers.name, Challenges.hacker_id
HAVING COUNT(Challenges.challenge_id) = (SELECT COUNT(Challenges_1.challenge_id)
                                         FROM Challenges as Challenges_1
                                         GROUP BY Challenges_1.hacker_id
                                         ORDER BY COUNT(Challenges_1.challenge_id) DESC 
                                         LIMIT 1)
OR COUNT(Challenges.challenge_id) NOT IN (SELECT COUNT(Challenges_2.challenge_id)
                                          FROM Challenges as Challenges_2
                                          GROUP BY Challenges_2.hacker_id
                                          HAVING Challenges_2.hacker_id <> Challenges.hacker_id)
ORDER BY COUNT(Challenges.challenge_id) DESC, Challenges.hacker_id
```
