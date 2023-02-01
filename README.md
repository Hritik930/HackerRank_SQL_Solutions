![License](https://img.shields.io/github/license/aardzark/hackerrank_sql_solutions?color=%2329BA5B&style=flat)
![HitCount](https://img.shields.io/endpoint?color=%2329BA5B&style=flat&url=https%3A%2F%2Fhits.dwyl.com%2Faardzark%2Fhackerrank_sql_solutions.json)
![Languages](https://img.shields.io/github/languages/count/aardzark/hackerrank_sql_solutions?color=%2329BA5B&style=flat)
![Top Language](https://img.shields.io/github/languages/top/aardzark/hackerrank_sql_solutions?color=%2329BA5B&style=flat)
![Last Commit](https://img.shields.io/github/last-commit/aardzark/hackerrank_sql_solutions?color=%2329BA5B&style=flat)
  
<div>
<h1>
  <div align="center">
    <a href="https://www.hackerrank.com/zacharyromepera1"><img src="https://repository-images.githubusercontent.com/231893793/cec60480-04a9-11eb-80c4-df7359d94047"               alt="LeetHub - Automatically sync your code to GitHub." width="200"></a>
    <br>
    <a href="https://www.hackerrank.com">HackerRank</a> SQL Challenge Solutions
  </div>
  <br>
  <div align="left">
    Index
  </div>
</h1>
</div>

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
    - [Weather Observation Station 2](#weather-observation-station-2-easy)
    - [Weather Observation Station 3](#weather-observation-station-3-easy)
    - [Weather Observation Station 4](#weather-observation-station-4-easy)
    - [Weather Observation Station 5](#weather-observation-station-5-easy)
    - [Weather Observation Station 6](#weather-observation-station-6-easy)
    - [Weather Observation Station 7](#weather-observation-station-7-easy)
    - [Weather Observation Station 8](#weather-observation-station-8-easy)
    - [Weather Observation Station 9](#weather-observation-station-9-easy)
    - [Weather Observation Station 10](#weather-observation-station-10-easy)
    - [Weather Observation Station 11](#weather-observation-station-11-easy)
	- [Weather Observation Station 12](#weather-observation-station-12-easy)
  - [Higher Than 75 Marks](#higher-than-75-marks-easy)
  - [Employees](#employees)
    - [Employee Names](#employee-names-easy)
    - [Employee Salaries](#employee-salaries-easy)
- [Aggregation](#aggregation)
  - [Revising Aggregations - The Sum Function](#revising-aggregations-\--the-sum-function-easy)
  - [Revising Aggregations - Averages](#revising-aggregations-\--averages-easy)
  - [Average Population](#average-population-easy)
- [Basic Join](#basic-join)
  - [Challenges](#challenges-medium)
- [Alternative Queries](#alternative-queries)
  - [Draw the Triangle](#draw-the-triangle)
    - [Draw the Triangle 1](#draw-the-triangle-1-easy)
    - [Draw the Triangle 2](#draw-the-triangle-2-easy)
    - [Print Prime Numbers](#print-prime-numbers-medium)
  
# Basic Select
## Revising the Select Query

The CITY table is described as follows:

| Column      | Type         |  
| ----------- | ------------ |
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | Number       |

### Revising the Select Query 1: Easy
Query all columns for all American cities in the CITY table with populations larger than 100000. The COUNTRYCODE for America is USA.

#### [Solution: MySQL](./SQL/MySQL/revising_the_select_query_1.sql)

### Revising the Select Query 2: Easy
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The COUNTRYCODE for America is USA.

#### [Solution: MySQL](./SQL/MySQL/revising_the_select_query_2.sql)

### Select All: Easy
Query all columns (attributes) for every row in the CITY table.

#### [Solution: MySQL](./SQL/MySQL/select_all.sql)

### Select By Id: Easy
Query all columns for a city in CITY with the ID 1661.

#### [Solution: MySQL](./SQL/MySQL/select_by_id.sql)

### Japanese Cities' Attributes: Easy

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

#### [Solution: MySQL](./SQL/MySQL/japanese_cities_attributes.sql)

### Japanese Cities' Names: Easy

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

#### [Solution: MySQL](./SQL/MySQL/japanese_cities_names.sql)

## Weather Observation Station

The STATION table is described as follows:

| Column      | Type         |  
| ----------- | ------------ |
| ID          | NUMBER       |
| CITY        | VARCHAR2(21) |
| STATE       | VARCHAR2(2)  |
| LAT_N       | NUMBER       |
| LONG_W      | NUMBER       |

where LAT_N is the northern latitude and LONG_W is the western longitude.

### Weather Observation Station 1: Easy

Query a list of CITY and STATE from the STATION table.

#### [Solution: MySQL](./SQL/MySQL/weather_observation_station_1.sql)

### Weather Observation Station 2: Easy

Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
2.  The sum of all values in LONG_W rounded to a scale of 2 decimal places.

#### [Solution: Oracle](./SQL/Oracle/weather_observation_station_2.sql)

### Weather Observation Station 3: Easy

Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

#### [Solution: MySQL](./SQL/MySQL/weather_observation_station_3.sql)

### Weather Observation Station 4: Easy

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

#### [Solution: MySQL](./SQL/MySQL/weather_observation_station_4.sql)

### Weather Observation Station 5: Easy

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

#### [Solution: MySQL](./SQL/MySQL/weather_observation_station_5.sql)

### Weather Observation Station 6: Easy

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

#### [Solution: MySQL](./SQL/MySQL/weather_observation_station_6.sql)

### Weather Observation Station 7: Easy

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

#### [Solution: MySQL](./SQL/MySQL/weather_observation_station_7.sql)

### Weather Observation Station 8: Easy

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

#### [Solution: Oracle](./SQL/Oracle/weather_observation_station_8.sql)

### Weather Observation Station 9: Easy

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

#### [Solution: Oracle](./SQL/Oracle/weather_observation_station_9.sql)

### Weather Observation Station 10: Easy

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

#### [Solution: Oracle](./SQL/Oracle/weather_observation_station_10.sql)

### Weather Observation Station 11: Easy

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

#### [Solution: Oracle](./SQL/Oracle/weather_observation_station_11.sql)

### Weather Observation Station 11: Easy

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

#### [Solution: Oracle](./SQL/Oracle/weather_observation_station_12.sql)

## Higher Than 75 Marks: Easy

Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

### Input Format

The STUDENTS table is described as follows:  The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

| Column      | Type        |  
| ----------- | ----------- |
| ID          | Integer     |
| Name        | String      |
| Marks       | Integer     |

#### [Solution: MySQL](./SQL/MySQL/higher_than_75_marks.sql)

## Employees

### Employee Names: Easy
### Employee Salaries: Easy

# Aggregation

The CITY table is described as follows: 

| Column      | Type         |  
| ----------- | ------------ |
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |

### Revising Aggregations - The Sum Function: Easy

Query the total population of all cities in CITY where District is California.

#### [Solution: MySQL](./SQL/MySQL/revising_aggregations_the_sum_function.sql)

### Revising Aggregations - Averages: Easy

Query the average population for all cities in CITY, rounded down to the nearest integer.

#### [Solution: MySQL](./SQL/MySQL/revising_aggregations_averages.sql)

# Basic Join
## Challenges: Medium

Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

### Input Format

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

#### [Solution: MySQL](./SQL/MySQL/challenges.sql)

# Alternative Queries
## Draw the Triangle
### Draw the Triangle 1: Easy

P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

```
* * * * * 
* * * * 
* * * 
* * 
*
```

Write a query to print the pattern P(20).

#### [Solution: MySQL](./SQL/MySQL/draw_the_triangle_1.sql)

### Draw the Triangle 2: Easy

P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

```
* 
* * 
* * * 
* * * * 
* * * * * 
```

Write a query to print the pattern P(20).

#### [Solution: Oracle](./SQL/Oracle/draw_the_triangle_2.sql)

## Print Prime Numbers: Medium

Write a query to print all prime numbers less than or equal to . Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

#### [Solution: PLSQL](./SQL/Oracle/PLSQL/print_prime_numbers.sql)
