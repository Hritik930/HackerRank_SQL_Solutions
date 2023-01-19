# HackerRank Solutions
The questions and mostly original solutions. Some hints and partial solutions were referenced after multiple attempts at the more difficult problems.
## Index
- [SQL](#sql)
  - [Basic Select](#basic-select)
    - [Revising the Select Query](#revising-the-select-query)
      - [Revising the Select Query 1](#revising-the-select-query-1-easy)
      - [Revising the Select Query 2](#revising-the-select-query-2-easy)
      - [Select All](#select-all-easy)
      - [Select By Id](#select-by-id-easy)
      - [Japanese Cities' Attributes](#japanese-cities-attributes-easy)
      - [Japanese Cities' Names](#japanese-cities-names-easy)
    - [Weather Observation Station](#weather-observation-station) 
      - [Weather Observation Station 1](#weather-observation-station-1-easy)
      - [Weather Observation Station 3](#weather-observation-station-3-easy)
      - [Weather Observation Station 4](#weather-observation-station-4-easy)
      - [Weather Observation Station 5](#weather-observation-station-5-easy)
      - [Weather Observation Station 6](#weather-observation-station-6-easy)
      - [Weather Observation Station 7](#weather-observation-station-7-easy)
    - [Higher Than 75 Marks](#higher-than-75-marks-easy)
    - [Employees](#employees)
      - [Employee Names](#employee-names-easy)
      - [Employee Salaries](#employee-salaries-easy)
  - [Aggregation](#aggregation)
    - [Revising Aggregations - The Sum Function](#revising-aggregations-\--the-sum-function-easy)
    - [Revising Aggregations - Averages](#revising-aggregations-\--averages-easy)
  - [Basic Join](#basic-join)
    - [Challenges](#challenges-medium)
  - [Alternative Queries](#alternative-queries)
    - [Draw the Triangle](#draw-the-triangle)
      - [Draw the Triangle 1](#draw-the-triangle-1-easy)
      - [Draw the Triangle 2](#draw-the-triangle-2-easy)
  
## SQL
### Basic Select
#### Revising the Select Query
The CITY table is described as follows:

| Column      | Type         |  
| ----------- | ------------ |
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | Number       |

##### Revising the Select Query 1: Easy
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

###### Solution
*MySQL*

```SQL
SELECT * FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;
```
##### Revising the Select Query 2: Easy
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

###### Solution
*MySQL*

```SQL
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';
```

##### Select All: Easy
Query all columns (attributes) for every row in the CITY table.

###### Solution
*MySQL*

```SQL
SELECT * FROM CITY;
```

##### Select By Id: Easy
Query all columns for a city in CITY with the ID 1661.

###### Solution
*MySQL*

```SQL
SELECT * FROM CITY WHERE ID = 1661;
```

##### Japanese Cities' Attributes: Easy

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

###### Solution
*MySQL*

```SQL
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';
```

##### Japanese Cities' Names: Easy

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

###### Solution
*MySQL*

```SQL
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';
```
#### Weather Observation Station

The STATION table is described as follows:

| Column      | Type         |  
| ----------- | ------------ |
| ID          | NUMBER       |
| CITY        | VARCHAR2(21) |
| STATE       | VARCHAR2(2)  |
| LAT_N       | NUMBER       |
| LONG_W      | NUMBER       |

where LAT_N is the northern latitude and LONG_W is the western longitude.

##### Weather Observation Station 1: Easy

Query a list of CITY and STATE from the STATION table.

###### Solution
*MySQL*

```SQL
SELECT CITY, STATE FROM STATION;
```

##### Weather Observation Station 3: Easy

Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

###### Solution
*MySQL*

```SQL
SELECT CITY, STATE FROM STATION;
```

##### Weather Observation Station 4: Easy

##### Weather Observation Station 5: Easy
##### Weather Observation Station 6: Easy
##### Weather Observation Station 7: Easy
#### Higher Than 75 Marks: Easy

Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

###### Input Format
The STUDENTS table is described as follows:  The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

| Column      | Type        |  
| ----------- | ----------- |
| ID          | Integer     |
| Name        | String      |
| Marks       | Integer     |

###### Solution: MySQL
*MySql*

```SQL
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;
```
#### Employees
##### Employee Names: Easy
##### Employee Salaries: Easy

### Aggregation
##### Revising Aggregations - The Sum Function: Easy
##### Revising Aggregations - Averages: Easy

### Basic Join
#### Challenges: Medium

Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

##### Input Format

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
*MySql*

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
ORDER BY COUNT(Challenges.challenge_id) DESC, Challenges.hacker_id;
```

### Alternative Queries
#### Draw the Triangle
##### Draw the Triangle 1: Easy

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
*MySQL*

```SQL
SET @P = '* ';
SET @i = 21;
SELECT REPEAT(@P, @i := @i - 1)
FROM INFORMATION_SCHEMA.TABLES LIMIT 20;
```

##### Draw the Triangle 2: Easy
