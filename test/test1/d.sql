SELECT a.id, a.name as building
    , b.name as city
		, c.name as country
FROM building a
INNER JOIN city as b
    on a.city_id = b.id
INNER JOIN country c
    on b.country_id= c.id
WHERE c.id IN (1,2)

/* 

Output

+----+--------------------+--------------+-----------+
| id | building           | city         | country   |
+----+--------------------+--------------+-----------+
|  1 | Bidakara           | Jakarta      | Indonesia |
|  2 | Mulia Tower        | Jakarta      | Indonesia |
|  3 | Cihampelas Apart   | Bandung      | Indonesia |
|  4 | Petronas           | Kuala Lumpur | Malaysia  |
|  5 | Standard Chartered | Penang       | Malaysia  |
+----+--------------------+--------------+-----------+
5 rows in set (0.023 sec)


*/	