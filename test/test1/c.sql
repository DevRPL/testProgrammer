SELECT a.id, a.name as city, a.population, b.name as country FROM city as a 
INNER JOIN country as b ON a.country_id=b.id WHERE a.population < 500 ORDER BY country ASC;

/* 

Output

+----+-------------+------------+-----------+
| id | city        | population | country   |
+----+-------------+------------+-----------+
|  2 | Bandung     |        400 | Indonesia |
|  3 | Medan       |        200 | Indonesia |
|  5 | Penang      |        300 | Malaysia  |
|  6 | Johor Bahru |        200 | Malaysia  |
|  7 | Singapura   |        400 | Singapura |
+----+-------------+------------+-----------+
5 rows in set (0.001 sec)


*/