/****************************************************************************************************
 * Julia asked her students to create some coding challenges. Write a query to print the            *
 * hacker_id, name, and the total number of challenges created by each student. Sort your results   *
 * by the total number of challenges in descending order. If more than one student created the same *
 * number of challenges, then sort the result by hacker_id. If more than one student created the    *
 * same number of challenges and the count is less than the maximum number of challenges created,   *
 * then exclude those students from the result.                                                     *
 ****************************************************************************************************/

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
